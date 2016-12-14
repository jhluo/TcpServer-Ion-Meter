#include "ClientTableWidget.h"
#include "TheServer.h"
#include "AClient.h"
#include "DataViewer.h"
#include "Misc/Logger.h"
#include <QHeaderView>
#include <QTimer>
#include <QAction>
#include <QInputEvent>
#include <QMenu>

#define UPDATE_INTERVAL 1000

ClientTableWidget::ClientTableWidget(TheServer *pServer, QWidget *pParent)
    : QTableWidget(pParent),
      m_pServer(pServer)
{
    setContextMenuPolicy(Qt::CustomContextMenu);
    connect(this, SIGNAL(customContextMenuRequested(const QPoint&)),
        this, SLOT(showContextMenu(QPoint)));

    setupTable();

    //set up how often the table update
    m_pUpdateTimer = new QTimer(this);
    m_pUpdateTimer->setInterval(UPDATE_INTERVAL);
    connect(m_pUpdateTimer, SIGNAL(timeout()), this, SLOT(updateTable()));
    m_pUpdateTimer->start();
}

ClientTableWidget::~ClientTableWidget()
{

}

void ClientTableWidget::setupTable()
{
    QStringList tableHeaders;
    tableHeaders <<"ID"<<"Status"<<"Time Online" << "Time Offline" << "Up Time";

    setColumnCount(tableHeaders.count());
    setHorizontalHeaderLabels(tableHeaders);
    //this->verticalHeader()->setVisible(false);

    horizontalHeader()->setSectionResizeMode(QHeaderView::Interactive);
    setSelectionBehavior(QAbstractItemView::SelectRows);
    setEditTriggers(QAbstractItemView::NoEditTriggers);
}


void ClientTableWidget::updateTable()
{
    setRowCount(m_pServer->getTotalClient());

    //List out the clients one by one in a loop
    for(int i=0; i<m_pServer->getTotalClient(); i++) {
        AClient *pClient = m_pServer->getClient(i);
        if(pClient == NULL) return; //make sure the client exist

        //draw all the texts
        this->setItem(i, 0, new QTableWidgetItem(QString::number(pClient->getClientId())));

        QString state = pClient->getClientState();
        this->setItem(i, 1, new QTableWidgetItem(state));
        if(state == "Offline")
            item(i, 1)->setBackgroundColor(QColor(255, 0, 0));
        else if(state == "No Data")
            item(i, 1)->setBackgroundColor(QColor(245, 245, 100));
        else
            item(i, 1)->setBackgroundColor(QColor(0, 240, 100));

        this->setItem(i, 2, new QTableWidgetItem(pClient->getClientConnectTime()));
        this->setItem(i, 3, new QTableWidgetItem(pClient->getClientDisconnectTime()));
        this->setItem(i, 4, new QTableWidgetItem(pClient->getClientUpTime()));
    }
}

//deselect selection when left click
void ClientTableWidget::mousePressEvent(QMouseEvent *event)
{
    if(event->button() == Qt::LeftButton) {
        QModelIndex item = indexAt(event->pos());
        bool selected = selectionModel()->isSelected(indexAt(event->pos()));
        QTableWidget::mousePressEvent(event);
        if ((item.row() == -1 && item.column() == -1) || selected)
        {
            clearSelection();
        }
    }
    else
        QTableWidget::mousePressEvent(event);
}

//this will show he right click pop-up menu
void ClientTableWidget::showContextMenu(const QPoint& pos) // this is a slot
{
    Q_UNUSED(pos);
    //make sure there is someting to be selected
    if(rowCount() != 0 && !selectedItems().isEmpty()) {
        QMenu *pMenu = new QMenu(this);
        QAction *pMsgViewAction = new QAction(QString("View Data..."), pMenu);
        connect(pMsgViewAction, SIGNAL(triggered()), this, SLOT(onMessageViewerTriggered()));
        pMenu->addAction(pMsgViewAction);
        pMenu->exec(QCursor::pos());
    }
}

//Open a message viewer dialg when option selected
void ClientTableWidget::onMessageViewerTriggered()
{
    //use this dialog to show client data

    //modaless
    //DataViewer viewer(m_pServer->getClient(currentRow()), this);
    //viewer.exec();

    //modal
    DataViewer *pViewer = new DataViewer(m_pServer->getClient(currentRow()), this);
    pViewer->setAttribute( Qt::WA_DeleteOnClose, true);
    pViewer->show();
}
