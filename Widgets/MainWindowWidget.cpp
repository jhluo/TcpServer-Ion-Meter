#include "MainWindowWidget.h"
#include "ClientTableWidget.h"

#include "Misc/Logger.h"

#include <QGroupBox>
#include <QFormLayout>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QSplitter>
#include <QLabel>

MainWindowWidget::MainWindowWidget(TheServer *pApp, QWidget *parent)
    : QWidget(parent),
      m_pServer(pApp)
{
    setMinimumSize(600, 420);
    createLayout();
    populateWidgets();
}

MainWindowWidget::~MainWindowWidget()
{

}

void MainWindowWidget::createLayout()
{
    m_pClientTable = new ClientTableWidget(m_pServer, this);

    m_pLogEdit = new QTextEdit(this);
    m_pLogEdit->setReadOnly(true);
    Logger::getInstance()->registerSystemDisplay(m_pLogEdit);
    //show time stamp on log
    Logger::getInstance()->setShowTime(true);

    //user a splitter
    QSplitter *pSplitter = new QSplitter(Qt::Vertical, this);
    pSplitter->addWidget(m_pClientTable);
    pSplitter->addWidget(m_pLogEdit);
    pSplitter->setStretchFactor(0, 1);
    pSplitter->setCollapsible(0, false);

    QVBoxLayout *pMainLayout = new QVBoxLayout();
    pMainLayout->addWidget(pSplitter);

    setLayout(pMainLayout);
}

void MainWindowWidget::populateWidgets()
{

}
