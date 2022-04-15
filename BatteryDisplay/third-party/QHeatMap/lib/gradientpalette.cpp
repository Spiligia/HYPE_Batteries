/*====================================================================
 * Filename:      gradientpalette.cpp
 * Version:
 * Author:        Dianchun Huang <simpleotter23@gmail.com>
 *
 * Copyright (c) 2013 Dianchun Huang (simpleotter23@gmail.com)
 *
 * Created at:    Sat May 25 08:45:12 2013
 * Modified at:   Sat Jul  6 13:30:56 2013
 * Description:
 *==================================================================*/
#include "../include/gradientpalette.h"
#include <QImage>
#include <QPainter>
#include <QDebug>

/*
 * Constructor
 * @param width gradient palette width
 */
GradientPalette::GradientPalette(int width)
	: gradient_(0, 0, width, 1),
	  width_(width)
{
    // Make a colorbar one pixel wide
	canvas_ = new QImage(width, 1, QImage::Format_ARGB32);
}

/*
 * Destructor
 */
GradientPalette::~GradientPalette()
{
	delete canvas_;
	canvas_ = NULL;
}

/*
 * Create a stop on the colorbar at the specified location with the specified color
 * @param index specifies the position, the corresponding position is (0, index)
 * @param color color
 */
void GradientPalette::setColorAt(qreal index, const QColor &color)
{
	gradient_.setColorAt(index, color);

	QPainter painter(canvas_);
	painter.setBrush(gradient_);
	painter.setPen(Qt::NoPen);
	painter.fillRect(canvas_->rect(), gradient_);
}

/*
 * Get the color value of the specified point on the gcolorbar
 * @param index value position
 * @return returns the color value at the specified index
 */
QColor GradientPalette::getColorAt(qreal index)
{
	index -= 1;
	if (index > width_)
		return Qt::color0;
	return canvas_->pixel(index, 0);
}
