#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "Widgets/MainWindowWidget.h"
#include "Widgets/DatabaseSettingsDialog.h"
#include "Widgets/ServerSettingsDialog.h"
#include "Misc/AppSettings.h"
#include "TheServer.h"
#include "Misc/Logger.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    setWindowTitle("Server");
    m_pServer = new TheServer(this);
    setupGui();
    loadAppSettings();

    m_pServer->startServer();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::closeEvent(QCloseEvent *event)
{
    Q_UNUSED(event);
    //shut down running modules
    m_pServer->shutdownServer();
    Logger::getInstance()->registerSystemDisplay(NULL);

    saveAppSettings();
    QMainWindow::close();
}

void MainWindow::setupGui()
{
    m_pMainWidget = new MainWindowWidget(m_pServer, this);
    setCentralWidget(m_pMainWidget);

    QMenuBar *pMenuBar = new QMenuBar(this);
    this->setMenuBar(pMenuBar);
    this->menuBar()->show();
    populateMenuBar(pMenuBar);
}

void MainWindow::populateMenuBar(QMenuBar *pMenuBar)
{
    QMenu *pSettingsMenu = pMenuBar->addMenu("Settings");

    QAction* pDatabaseSettingsAct = new QAction(QString("Database Settings"), this);
    connect(pDatabaseSettingsAct, SIGNAL(triggered()),this,SLOT(openDatabaseSettingsDialog()));
    pSettingsMenu->addAction(pDatabaseSettingsAct);

    QAction* pServerSettingsAct = new QAction(QString("Server Settings"), this);
    connect(pServerSettingsAct, SIGNAL(triggered()),this,SLOT(openServerSettingsDialog()));
    pSettingsMenu->addAction(pServerSettingsAct);
}

void MainWindow::openDatabaseSettingsDialog()
{
    DatabaseSettingsDialog dialog(this);
    dialog.exec();
}

void MainWindow::openServerSettingsDialog()
{
    ServerSettingsDialog dialog(m_pServer, this);
    dialog.exec();
}

void MainWindow::saveAppSettings()
{
    //save current dimension of app
    AppSettings settings;
    settings.writeMiscSettings("windowGeometry", saveGeometry());
    settings.writeMiscSettings("windowState", saveState());
}


void MainWindow::loadAppSettings()
{
    //load saveDiemension off App
    AppSettings settings;
    QByteArray geometry = settings.readMiscSettings("windowGeometry", QByteArray()).toByteArray();
    if(!geometry.isEmpty())
        restoreGeometry(settings.readMiscSettings("windowGeometry", "").toByteArray());
    else
        resize(1024, 800);

    restoreState(settings.readMiscSettings("windowState", "").toByteArray());
}
