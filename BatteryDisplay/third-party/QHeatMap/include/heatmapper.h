/*====================================================================
 * Filename:      heatmapper.h
 * Version:
 * Author:        Dianchun Huang <simpleotter23@gmail.com>
 *
 * Copyright (c) 2013 Dianchun Huang (simpleotter23@gmail.com)
 *
 * Created at:    Thu May 23 23:06:27 2013
 * Modified at:   Tue Jul  9 23:12:59 2013
 * Description:
 *==================================================================*/
#ifndef _HEATMAPPER_H_
#define _HEATMAPPER_H_

#include "global.h"
#include <QVector>

QT_BEGIN_NAMESPACE
class QImage;
QT_END_NAMESPACE

class GradientPalette;

class QHEATMAP_DLL_EXPORT HeatMapper
{
public:
    HeatMapper(QImage *image, GradientPalette *palette, int radius, int opacity);
    virtual ~HeatMapper();

    void save(const QString &fname);
    void addPoint(int x, int y, float z=1.0f);
    void setPalette(GradientPalette *palette);
    int  getCount(int x, int y);
    void colorize(int x, int y);
    void colorize();

    virtual void drawAlpha(int x, int y, float z, int count, bool colorize_now = true);

protected:
    virtual void colorize(int left, int top, int right, int bottom);
    void redraw();

private:
    int increase(int x, int y, int delta = 1);

private:
    // Array to store point frequencies, same size as image
    QVector<int> data_;
    // A copy of the image used to store the gradient transparency data
    QImage *alphaCanvas_;
    // image used to display the output
    QImage *mainCanvas_;
    // palette
    GradientPalette *palette_;

    // radius
    int radius_;
    // Opacity
    int opacity_;
    // maximum number of names
    qreal max_;
    // image width
    int width_;
    // image height
    int height_;
};

#endif /* _HEATMAPPER_H_ */
