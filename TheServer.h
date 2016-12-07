#ifndef THESERVER_H
#define THESERVER_H

#include <QObject>
#include <QTcpServer>
#include <QList>

class DatabaseAccess;
class AClient;

class TheServer : public QTcpServer
{
    Q_OBJECT

public:
    TheServer(QObject *pParent = 0);
    ~TheServer();

    void startServer();
    void shutdownServer();
    void checkClients();

    int getTotalClient() const;
    AClient *getClient(const int index);

private:
    //all client connections are added to this list
    QList<AClient*> m_ClientList;

private slots:
    void onNewConnection();
    void onClientDisconnected();
    void onNewClientConnected();
};

#endif // THESERVER_H
