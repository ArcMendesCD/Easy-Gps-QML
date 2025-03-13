#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Coordinates.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Coordinates>("com.easygps.coordinates", 0, 1, "Coordinates");
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("easy-gps-glonass", "Main");

    return app.exec();
}
