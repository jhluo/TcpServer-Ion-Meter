#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    qApp->addLibraryPath( qApp->applicationDirPath() + "/sqldrivers");

    MainWindow w;
    w.show();

    return a.exec();
}
