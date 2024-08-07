#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <optional>

std::optional<int> divide(int x, int y)
{
    if(y == 0)
        return {};
    else
        return x / y;
}

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    std::optional<int> oi = divide(1,0);
    if(oi)
        qDebug() << *oi;
    else
        qDebug() << "fail divide";
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
