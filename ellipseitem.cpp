#include "ellipseitem.h"
#include <QPainter>
EllipseItem::EllipseItem(QQuickItem* parent):
    QQuickPaintedItem(parent)
{}

void EllipseItem::paint(QPainter *painter)
{
    painter->save();

    QPen pen = painter->pen();
    pen.setBrush(m_color);
    pen.setWidth(4);
    painter->setPen(pen);

    QRectF paintRect = QRectF({}, QSizeF{width(), height()}).adjusted(1,1,-1,-1);

    painter->drawEllipse(paintRect);

    painter->restore();
}
