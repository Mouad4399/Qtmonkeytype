#include <QApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QObject::connect(&engine, &QQmlApplicationEngine::quit, &app, &QGuiApplication::quit);
    const QUrl url(QStringLiteral("qrc:/Qtmonkeytype-cpp/main.qml"));
    engine.load(url);

    return app.exec();
}
