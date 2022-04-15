/*====================================================================
 * Filename:      heatmapper.cpp
 * Version:
 * Author:        Dianchun Huang <simpleotter23@gmail.com>
 *
 * Copyright (c) 2013 Dianchun Huang (simpleotter23@gmail.com)
 *
 * Created at:    Thu May 23 23:39:03 2013
 * Modified at:   Tue Jul  9 23:45:21 2013
 * Description:
 *==================================================================*/
#include "../include/heatmapper.h"
#include <QImage>
#include <QColor>
#include <QPainter>
#include <QRadialGradient>
#include <QDebug>
#include "../include/gradientpalette.h"

/**
 * @brief Constructor
 * @param image the image used to display the output
 * @param radius the radius, which determines the size of the radial gradient
 * @param opacity the transparency, from [0, 100]
 */
HeatMapper::HeatMapper(QImage *image, GradientPalette *palette,
					   int radius, int opacity)
	: radius_(radius), opacity_(opacity), max_(1)
{
	Q_ASSERT(image);
	Q_ASSERT(palette);

	palette_ = palette;

	mainCanvas_ = image;
	alphaCanvas_ = new QImage(image->size(), QImage::Format_ARGB32);
	Q_ASSERT(alphaCanvas_);
	alphaCanvas_->fill(QColor(0, 0, 0, 0));

	width_ = image->width();
	height_ = image->height();
	data_.resize(width_ * height_);
	data_.fill(0);
}

HeatMapper::~HeatMapper()
{}

/**
 * @brief Increase the number of mouse clicks on the coordinate
 * @param x abscissa
 * @param y ordinate
 * @param delta increment value
 * @return returns the updated hit count
 */
int HeatMapper::increase(int x, int y, int delta)
{
	int index = (y - 1) * width_ + (x - 1);
	data_[index] += delta;
	return data_[index];
}

/*
 * save image to file
 * @param fname filename
 */
void HeatMapper::save(const QString &fname)
{

}

/**
 * @brief add a data point
 * @param x abscissa
 * @param y ordinate
 * @param z intensity
 */
void HeatMapper::addPoint(int x, int y, float z)
{
	if (x <= 0 || y <= 0 || x > width_ || y > height_)
		return;

	int count = increase(x, y);

	if (max_ < count) {
		max_ = count;
		redraw();
		return;
	}

	drawAlpha(x, y, z, count);
}

/*
 * Redraw the entire image based on the maximum clicks, this method will produce a persistence effect
 */
void HeatMapper::redraw()
{
	QColor color(0, 0, 0, 0);
	alphaCanvas_->fill(color);
	mainCanvas_->fill(color);

    // Iterate over all data points
	for (int i = 0; i < data_.size(); ++i) {
		if (0 == data_[i])
			continue;
		drawAlpha(i % width_ + 1, i / width_ + 1, data_[i], false);
	}
	colorize();
}

/*
 * set color palette
 * @param palette palette object pointer
 */
void HeatMapper::setPalette(GradientPalette *palette)
{
	Q_ASSERT(palette);

	if (palette)
		palette_ = palette;
}

/*
 * Get the number of mouse clicks at the specified point
 */
int HeatMapper::getCount(int x, int y)
{
	if (x < 0 || y < 0)
		return 0;
	return data_[(y - 1) * width_ + (x - 1)];
}

/**
 * @brief Draw transparent radial gradient
 * @param x abscissa
 * @param y ordinate
 * @param count the number of mouse clicks on that point
 * @param colorize_now whether to call the coloring method
 */
void HeatMapper::drawAlpha(int x, int y, float z, int count, bool colorize_now)
{
	int alpha = int(qreal(count * 1.0 / max_)*255 + 0.5);
    alpha = z*255 + 0.5;
	QRadialGradient gradient(x, y, radius_);
	gradient.setColorAt(0, QColor(0, 0, 0, alpha));  // Black, varying alpha
	gradient.setColorAt(1, QColor(0, 0, 0, 0));   // Black, completely transparent

	QPainter painter(alphaCanvas_);
	painter.setPen(Qt::NoPen);
	painter.setBrush(gradient);
	painter.drawEllipse(QPoint(x, y), radius_, radius_);

	if (colorize_now)
		colorize(x, y);
}

/*
 * Overloaded method, coloring
 */
void HeatMapper::colorize()
{
	colorize(0, 0, width_, height_);
}

/**
 * @brief Overloaded method, coloring
 * @param x abscissa
 * @param y ordinate
 * @param subArea transparent radial gradient area
 */
void HeatMapper::colorize(int x, int y)
{
	int left = x - radius_;
	int top = y - radius_;
	int right = x + radius_;
	int bottom = y + radius_;

    // Saturate at the edges
	if (left < 0)
		left = 0;

	if (top < 0)
		top = 0;

	if (right > width_)
		right = width_;

	if (bottom > height_)
		bottom = height_;

	colorize(left, top, right, bottom);
}

/**
 * @brief Overloaded function, the actual coloring operation is in this method
 * @param left the abscissa of the upper left corner
 * @param top The ordinate of the upper left corner
 * @param right the abscissa of the lower right corner
 * @param bottom The ordinate of the lower right corner
 */

void HeatMapper::colorize(int left, int top, int right, int bottom)
{
	int alpha = 0;
	int finalAlpha = 0;
	QColor color;
	for (int i = left; i < right; ++i) {
		for (int j = top; j < bottom; ++j) {
			alpha = qAlpha(alphaCanvas_->pixel(i, j));

            // If alpha is completely transparent
			if (!alpha)
				continue;

			finalAlpha = (alpha < opacity_ ? alpha : opacity_);
			color = palette_->getColorAt(alpha);
			mainCanvas_->setPixel(i, j, qRgba(color.red(),
											  color.green(),
											  color.blue(),
											  finalAlpha));
		}
	}
}



















