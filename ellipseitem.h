#ifndef ELLIPSEITEM_H
#define ELLIPSEITEM_H

#include <QQuickPaintedItem>

class EllipseItem : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged FINAL)
public:
    EllipseItem(QQuickItem * parent = 0);
    void paint(QPainter* painter) override;
    void setColor(QColor& newColor);
    QColor color();

     signals:
            void  colorChanged();

private:
    QColor m_color;
};

#endif // ELLIPSEITEM_H
