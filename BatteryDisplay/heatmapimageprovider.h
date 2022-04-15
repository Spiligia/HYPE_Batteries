#ifndef HEATMAPIMAGEPROVIDER_H
#define HEATMAPIMAGEPROVIDER_H

#include <QQuickImageProvider>
#include <QString>
#include <qqml.h>

class HeatMapper;
class GradientPalette;

class HeatMapImageProvider: public QQuickImageProvider
{
public:
    HeatMapImageProvider();

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override;

private:

    // Drawn object
	HeatMapper *mapper_;

    // Image used to display the output
	QImage *canvas_;

    // Colorbar palette
	GradientPalette *palette_;

};

#endif // HEATMAPIMAGEPROVIDER_H
