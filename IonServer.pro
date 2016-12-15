#-------------------------------------------------
#
# Project created by QtCreator 2016-11-30T08:46:30
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets core gui network

TARGET = IonServer
VERSION = 2.0.0
DEFINES += APP_VERSION=\\\"$$VERSION\\\"

TEMPLATE = app

QTPLUGIN += qsqlodbc

RC_ICONS = epex_logo.ico

SOURCES += main.cpp\
        mainwindow.cpp \
    Widgets/MainWindowWidget.cpp \
    Misc/Logger.cpp \
    Widgets/ClientTableWidget.cpp \
    Misc/AppSettings.cpp \
    Widgets/DatabaseSettingsDialog.cpp \
    TheServer.cpp \
    AClient.cpp \
    Widgets/DataViewer.cpp \
    Widgets/ServerSettingsDialog.cpp \
    Widgets/AboutDialog.cpp \
    Widgets/MainStatusbar.cpp \
    Widgets/ActivationDialog.cpp \
    Widgets/ClientCommandDialog.cpp

HEADERS  += mainwindow.h \
    Widgets/MainWindowWidget.h \
    Misc/Logger.h \
    Widgets/ClientTableWidget.h \
    Misc/AppSettings.h \
    Widgets/DatabaseSettingsDialog.h \
    TheServer.h \
    AClient.h \
    Widgets/DataViewer.h \
    Widgets/ServerSettingsDialog.h \
    Widgets/AboutDialog.h \
    Widgets/MainStatusbar.h \
    Widgets/ActivationDialog.h \
    Widgets/ClientCommandDialog.h

FORMS    += mainwindow.ui
