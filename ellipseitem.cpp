#include "ellipseitem.h"
#include <QPainter>
#include <QWheelEvent>

EllipseItem::EllipseItem(QQuickItem* parent):
    QQuickPaintedItem(parent)
{}

void EllipseItem::paint(QPainter *painter)
{
    painter->save();

    //QPen pen = painter->pen();
    //pen.setBrush(m_color);
    //pen.setWidth(4);
    painter->setPen(Qt::NoPen);
    painter->setBrush(m_color);

    QRectF paintRect = QRectF({}, QSizeF{width(), height()}).adjusted(1,1,-1,-1);

    painter->drawEllipse(contentsBoundingRect());// paintRect);

    painter->restore();
}

void EllipseItem::setColor(QColor &newColor)
{
    if(m_color != newColor){
        m_color = newColor;
        update();
        emit colorChanged();
    }
}

QColor EllipseItem::color()
{
    return m_color;
}

void EllipseItem::mousePressEvent(QMouseEvent* me)
{
    setColor(randomColor());
}

void EllipseItem::wheelEvent(QWheelEvent* we)
{
    if(we->angleDelta() > 0)
        setColor(m_color.lighter(110));
    else
        seColor(m_color.darker(110));
}

QColor& EllipseItem::randomColor()
{
    return QColor(qrand() & 0xFF, qrand() & 0xFF, qrand() & 0xFF);
}


