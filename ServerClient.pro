#-------------------------------------------------
#
# Project created by QtCreator 2016-11-30T08:46:30
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets core gui network

TARGET = ServerClient
TEMPLATE = app
QTPLUGIN     += qsqlodbc

RC_ICONS = epex_logo.ico

SOURCES += main.cpp\
        mainwindow.cpp \
    Widgets/MainWindowWidget.cpp \
    Misc/Logger.cpp \
    Misc/DatabaseAccess.cpp \
    Widgets/ClientTableWidget.cpp \
    Misc/AppSettings.cpp \
    Widgets/DatabaseSettingsDialog.cpp \
    TheServer.cpp \
    AClient.cpp \
    Widgets/DataViewer.cpp \
    Widgets/ServerSettingsDialog.cpp

HEADERS  += mainwindow.h \
    Widgets/MainWindowWidget.h \
    Misc/Logger.h \
    Misc/DatabaseAccess.h \
    Widgets/ClientTableWidget.h \
    Misc/AppSettings.h \
    Widgets/DatabaseSettingsDialog.h \
    TheServer.h \
    AClient.h \
    Widgets/DataViewer.h \
    Widgets/ServerSettingsDialog.h

FORMS    += mainwindow.ui
