#ifndef ELLIPSEITEM_H
#define ELLIPSEITEM_H

#include <QQuickPaintedItem>

class EllipseItem : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged )
public:
    EllipseItem(QQuickItem * parent = 0);
    void paint(QPainter* painter) override;
    void setColor(QColor newColor);
    QColor color();

     signals:
            void  colorChanged();

     protected:

         void mousePressEvent(QMouseEvent* me) override;
         void wheelEvent(QWheelEvent* we) override;

private:
    QColor m_color;
};

#endif // ELLIPSEITEM_H
