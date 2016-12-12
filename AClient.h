#ifndef ACLIENT_H
#define ACLIENT_H

#include <QObject>
#include <QTcpSocket>
#include <QTimer>
#include <QDateTime>
#include <QTextEdit>
#include <QHostAddress>
#include "Misc/DatabaseAccess.h"

class AClient : public QObject
{
    Q_OBJECT

public:
    //possible state of a client
    enum eClientState {
        eOnline,
        eNoData,
        eOffline
    };

    AClient(QObject *pParent = 0);
    ~AClient();

    void setSocket(QTcpSocket *pSocket);

    void closeClient();

    //we use this to register a dialog that will show client data
    void registerDataViewer(QTextEdit *pTextEdit);

    //getter functions to fetch information about the client
    int getClientId() const { return m_ClientId; }
    QString getClientIp() const { return m_pSocket->peerAddress().toString(); }
    QString getClientState() const;

    //return time of connection and disconnection
    QString getClientConnectTime() const;
    QString getClientDisconnectTime() const;

    //return how long the client has been up in number of seconds;
    QString getClientUpTime() const;

private:
    void handleData(const QByteArray &newData);
    void writeDataLog(const QString &fileName, const QString &dataString);

    QTcpSocket *m_pSocket;

    DatabaseAccess m_Database;

    QByteArray m_Data;

    //Time stamp when client was connected and disconnected;
    QDateTime m_TimeOfConnect;
    QDateTime m_TimeOfDisconnect;

    //Use to timeout client when no data is coming
    QTimer *m_pDataStarvedTimer;

    //current state of the client
    eClientState m_ClientState;

    int m_ClientId; //ID number of the client;

    //this can be used to display data info from a client
    QTextEdit *m_pDataViewer;

    //method used in decode to convert bytes into a double
    double convertToDecimal(const QByteArray &highByte, const QByteArray &lowByte);

signals:
    void error(QTcpSocket::SocketError socketerror);
    void newClientConnected();

public slots:

private slots:
    void onDataReceived();
    void onDataTimeout();
    void onSocketDisconnected();
};

#endif // AClient_H
