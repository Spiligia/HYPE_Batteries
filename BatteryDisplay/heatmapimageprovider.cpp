
#include "QPainter"
#include <QRegularExpression>
#include <QJsonDocument>
#include <QJsonObject>
#include <QUrl>

#include "third-party/QHeatMap/include/heatmapper.h"
#include "third-party/QHeatMap/include/gradientpalette.h"

#include "heatmapimageprovider.h"

HeatMapImageProvider::HeatMapImageProvider()
    : QQuickImageProvider(QQuickImageProvider::Image), mapper_(NULL), canvas_(NULL)
{
    // Create the colorbar. The settings are completely arbitrary.
    int colorBarHeight = 255;
    palette_ = new GradientPalette(colorBarHeight);

	palette_->setColorAt(0.45, Qt::blue);
	palette_->setColorAt(0.55, Qt::cyan);
	palette_->setColorAt(0.65, Qt::green);
	palette_->setColorAt(0.85, Qt::yellow);
	palette_->setColorAt(1.0, Qt::red);
}

QImage HeatMapImageProvider::requestImage(const QString &id, QSize *size, const QSize &requestedSize){
    // When Qt passes the string data to the `QQuickImageProvider()`, it converts it to a html percent
    // encoding. This needs to be undone and converted back into a normal string.
    QString idString = QUrl::fromPercentEncoding(id.toUtf8());

    // Extract the parameters with a regular expressoin
    QRegularExpression rx(".*\\}");
    QRegularExpressionMatch match = rx.match(idString);

    // Place the captured string data into a discrete string.
    QString paramsJSON = match.captured(0);

    // Parse the JSON string into a JSON document
    QJsonDocument paramsDoc = QJsonDocument::fromJson(paramsJSON.toUtf8());
    if (!paramsDoc.isObject()) {
        // handle parse error...
    }

    // Extract the objects
    QJsonObject json = paramsDoc.object();

    // Convert the objects into values
    int numSeriesCells = json.value("numSeriesCells").toInt();
    int numParallelCells = json.value("numParallelCells").toInt();
    int radius = json.value("radius").toInt();
    int opacity = json.value("opacity").toInt();

    qDebug()<< "paramsString: " << paramsJSON << ", requestedSize: " << requestedSize;

    float cellWidth_px = requestedSize.width() / (float)numSeriesCells;
    float cellHeight_px = requestedSize.height() / (float)numParallelCells;

    // Set minimum height and width. These values are not chosen with any care
    int width = 500; //change from 500 to 900
    int height = 900;

    // Set the canvas height and width
    int canvas_width = requestedSize.width() > 0 ? requestedSize.width() : width;
    int canvas_height = requestedSize.height() > 0 ? requestedSize.height() : height;

    // Delete the old image if it exists
    if (canvas_ != NULL) {
        delete canvas_;
        delete mapper_;
    }

    canvas_ = new QImage(canvas_width, canvas_height, QImage::Format_ARGB32);
	canvas_->fill(QColor(0, 0, 0, 0));
	mapper_ = new HeatMapper(canvas_, palette_, radius, opacity);

    // Iterate over each cell and draw a value
    for (int i=0; i< numSeriesCells; i++) {
        for (int j=0; j< numParallelCells; j++) {
            float temperatureIntensity = 0.5f + (rand() % 50)/100.0f;;
            mapper_->addPoint(cellWidth_px*i + cellWidth_px/2, cellHeight_px*j + cellHeight_px/2, temperatureIntensity);
        }
    }

    // Set the size for the `QQuickImageProvider()`
    if (size != NULL) {
        *size = QSize(canvas_width, canvas_height);
    }

    return *canvas_;
}
