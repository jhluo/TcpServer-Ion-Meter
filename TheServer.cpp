#include <QThread>
#include "TheServer.h"
#include "AClient.h"
#include "QTcpSocket"
#include "Misc/Logger.h"
#include "Misc/DatabaseAccess.h"
#include "Misc/AppSettings.h"

TheServer::TheServer(QObject *pParent)
    : QTcpServer(pParent)
{
    connect(this, SIGNAL(newConnection()), this, SLOT(onNewConnection()));
}

TheServer::~TheServer()
{

}

void TheServer::startServer()
{
    /*hardcoded to localhost and port 5101, this can be made more flexible
        by creating a server settings dialog */
    AppSettings settings;
    QHostAddress addr;
    addr.setAddress(settings.readServerSettings("host", "127.0.0.1").toString());
    addr.toIPv4Address();
    quint16 port = settings.readServerSettings("port", "5101").toInt();

    if (!this->listen(addr, port)) {
        LOG_SYS(QString("Unable to start the server: %1.").arg(this->errorString()));
        close();
        return;
    } else {
        LOG_SYS(QString("Server Started, listening on %1 at port %2")
                .arg(addr.toString())
                .arg(port)
                );
    }

    //Test the database
    DatabaseAccess db;
    if(!db.connectToDB("000")) {
        LOG_SYS("Failed to connect to database! Go to Settings->Database Settings to configure your database settings");
    } else {
        LOG_SYS("Database connection is ready.");
    }
}

void TheServer::shutdownServer()
{
    LOG_SYS("Stopping all clients and shutting down the server...");

    //disconnect all clients first
    for(int i=0; i<m_ClientList.size(); i++){
        if(m_ClientList.at(i)->getClientState()=="Online")
            m_ClientList.at(i)->closeClient();
            m_ClientList.at(i)->deleteLater();
    }

    m_ClientList.clear();
    this->close();
}


void TheServer::onNewConnection()
{
    QTcpSocket *pSocket = this->nextPendingConnection();

    //a new client has connected, we want to create a new client object and put it into its own thread
    LOG_SYS(QString("New client from %1 has connected").arg(pSocket->peerAddress().toString()));

    AClient *pClient = new AClient;

    //put the socket(connection) into the client object
    pClient->setSocket(pSocket);


    QThread *pClientThread = new QThread(this);

    pClient->moveToThread(pClientThread);

    //stop the thread and clean up when pClient is disconnected
    connect(pClient, SIGNAL(newClientConnected()), this, SLOT(onNewClientConnected()));
    connect(pClientThread, SIGNAL(finished()), pClientThread, SLOT(deleteLater()));

    pClientThread->start();
}


void TheServer::onNewClientConnected()
{
    AClient* pClient = static_cast<AClient*>(QObject::sender());

    //check to see if this device was previously connected and was in "offline" state
    for(int i=0; i<m_ClientList.size(); i++) {
        if(m_ClientList.at(i)->getClientId() == pClient->getClientId()
           && m_ClientList.at(i)->getClientState() != "Online") {
            m_ClientList.at(i)->deleteLater();  //we delete and remove it
            m_ClientList.removeAt(i);
        }
    }

    //put the next client into the list
    m_ClientList.append(pClient);
}

int TheServer::getTotalClient() const
{
    return m_ClientList.size();
}

QList<AClient*> *TheServer::getClientList()
{
    return &m_ClientList;
}

AClient* TheServer::getClient(const int index)
{
    if(index >= m_ClientList.size())
        return NULL;

    return m_ClientList.at(index);
}
