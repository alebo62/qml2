#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <optional>
#include <QQuickView>
//#include <QRegisterType>

#include "ellipseitem.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    qmlRegisterType<EllipseItem>("Shapes", 1, 0, "Ellipse");

    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:main.qml"));
    view.show();



    // std::optional<int> oi = divide(1,0);
    // if(oi)
    //     qDebug() << *oi;
    // else
    //     qDebug() << "fail divide";
    // double d {1.0};
    // {
    //     double& e {d};
    //     e = 2.0;
    //     qDebug() << d;
    // }
    // qDebug() << d;



    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
