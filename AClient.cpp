#include "AClient.h"
#include "Misc/Logger.h"
#include "QScrollBar"

#define DATA_TIMEOUT 60000  //auto disconnect after no data for 60 seconds
#define DATA_SIZE 50    //size of data frame in bytes

AClient::AClient(QObject *pParent)
    : QObject(pParent),
      m_pSocket(NULL),
      m_ClientId(0),
      m_pDataViewer(NULL)
{
    m_Data.clear();

    m_TimeOfConnect = QDateTime::currentDateTime();
    //Once DATA_TIMEOUT millsecond is reached, disconnect the client
    m_ClientState = eOnline;

    //Time out the client if stop sending data
    m_pDataStarvedTimer = new QTimer(this);
    m_pDataStarvedTimer->setInterval(DATA_TIMEOUT);
    connect(m_pDataStarvedTimer, SIGNAL(timeout()), this, SLOT(onDataTimeout()));
    m_pDataStarvedTimer->start();
}

AClient::~AClient()
{
    m_Data.clear();
}

void AClient::setSocket(QTcpSocket *pSocket)
{
    //assign the socket to this client and connnect the slots
    m_pSocket = pSocket;
    m_pSocket->setParent(this);
    connect(m_pSocket, SIGNAL(readyRead()), this, SLOT(onDataReceived()));
    connect(m_pSocket, SIGNAL(disconnected()), this, SLOT(onSocketDisconnected()));
}

void AClient::registerDataViewer(QTextEdit *pTextEdit)
{
    m_pDataViewer = pTextEdit;
}

void AClient::disconnectClient()
{
    m_pSocket->disconnectFromHost();
}

void AClient::onDataReceived()
{
    //got data, refresh data timer
    m_pDataStarvedTimer->stop();
    m_ClientState = eOnline;

    //read the incoming data
    QByteArray newData = m_pSocket->readAll();

    if(newData.isEmpty())
        return;

    handleData(newData);

    //start timer again awaiting for next packet
    m_pDataStarvedTimer->start();
}

void AClient::handleData(const QByteArray &newData)
{
    if(newData.left(1) == "J" //it's a new packet
       || m_Data.size() >= DATA_SIZE // member is holding more than it should for some reason
       )
    {
        m_Data.clear(); //clear previous data
    }

    m_Data.append(newData);

    if(m_Data.size() < DATA_SIZE) {    //not full packet, we wait till next iteration
        return;
    }

    //qDebug() <<"Data to be decoded is:  " << m_Data.toHex()<<endl << endl;

    //Here we start decoding because we passed the checks above

    //first we validate the message header
    QString header;
    header.append(m_Data.left(5));
    if(header != "JHWTO") {
        m_Data.clear();
        return;
    }

    bool ok = false;
    if(m_ClientId == 0) //this is the first packet we get in this client, so tell server a new client has connected
        emit newClientConnected();

    m_ClientId = m_Data.mid(5, 2).toHex().toInt(&ok, 16);

    int msgCount = m_Data.mid(7, 2).toHex().toInt(&ok, 16);
    Q_UNUSED(msgCount);

    QByteArray bcc = m_Data.mid(9, 1).toHex();
    Q_UNUSED(bcc);  //message checksum, no use yet


    if(m_Data.size() < 10)
       return;
    int year = m_Data.mid(10,1).toHex().toInt(&ok, 16);
    int month = m_Data.mid(11,1).toHex().toInt(&ok, 16);
    int day = m_Data.mid(12,1).toHex().toInt(&ok, 16);
    int hour = m_Data.mid(13,1).toHex().toInt(&ok, 16);
    int minute = m_Data.mid(14,1).toHex().toInt(&ok, 16);
    QString date = QString("%1/%2/%3 %4:%5")
            .arg(year)
            .arg(month)
            .arg(day)
            .arg(hour)
            .arg(minute);

    //convert temperature to floating point number, first argument is higher byte,
    // second argument is lower byte
    double temperature = convertToDecimal(m_Data.mid(15,1), m_Data.mid(16,1));

    //convert humidity to floating point number, same as temeprature
    double humidity = convertToDecimal(m_Data.mid(17, 1), m_Data.mid(18,1));

    int nIonCount = m_Data.mid(19, 2).toHex().toInt(&ok, 16);
    int pIonCount = m_Data.mid(21, 2).toHex().toInt(&ok, 16);

    int windDirection = m_Data.mid(23,2).toHex().toInt(&ok, 16);

    double windSpeed = convertToDecimal(m_Data.mid(25,1), m_Data.mid(26,1));

    //convert rainfall to a double
    const char rain_h = m_Data.at(27);
    const char rain_l = m_Data.at(28);

    //shift higher-byte 4 bits to left then combine with first 4 bits of lower-byte
    //???this is different than what's in spec, need to verify
    int rain_int = (rain_h << 4) | ((rain_l & 0xF0) >> 4);

    //only look at last 4 bits of lower-byte
    int rain_dec = rain_l & 0x0F;

    //combine integer and fractional part
    double rain_frac = 0;
    if(rain_dec<10)
        rain_frac = rain_dec/10.0;
    else
        rain_frac = rain_dec/100.0;

    double rainfall = rain_int + rain_frac;

    //pressure needs three bytes
    double pressure = convertToDecimal(m_Data.mid(29, 2), m_Data.mid(31,1));

    int ultraViolet = m_Data.mid(32, 2).toHex().toInt(&ok, 16);

    //TODO:  BCC check sum stuff on byte 34~36,  not implemented yet

    int oxygen = m_Data.mid(37, 2).toHex().toInt(&ok, 16);

    int PM1 = m_Data.mid(39, 2).toHex().toInt(&ok, 16);

    int PM25 = m_Data.mid(41, 2).toHex().toInt(&ok, 16);

    int PM10 = m_Data.mid(43, 2).toHex().toInt(&ok, 16);

    int error = 0;  //TBD

    m_Data.clear(); //done decoding, clear the aray


    //display the data if there's a viewer dialog opened
    if(m_pDataViewer != NULL) {
        QString DataStr = QString("ID: %1\n"
                                  "Date: %2\n")
                                  .arg(m_ClientId)
                                  .arg(date);
        DataStr += QString("Temperature【温度】:  %1\n"
                           "Humidity【湿度】:  %2\n"
                           "Negative Ion【负离子】:  %3\n"
                           "Positive Ion【正离子】:  %4\n"
                           "Wind Direction【风向】:  %5\n"
                           "Wind Speed【风速】:  %6\n"
                           "Rain Fall【雨量】:  %7\n"
                           "Pressure【气压】:  %8\n"
                           "Ultra Violet【紫外线】:  %9\n"
                           "Oxygen Concentration【含氧量】:  %10\n"
                           "PM 1.0:  %11\n"
                           "PM 2.5:  %12\n"
                           "PM 10:  %13\n\n"
                           )
                           .arg(temperature)
                           .arg(humidity)
                           .arg(nIonCount)
                           .arg(pIonCount)
                           .arg(windDirection)
                           .arg(windSpeed)
                           .arg(rainfall)
                           .arg(pressure)
                           .arg(ultraViolet)
                           .arg(oxygen)
                           .arg(PM1)
                           .arg(PM25)
                           .arg(PM10);

        m_pDataViewer->append(DataStr);
        //put scroll at bottom to show newest message
        m_pDataViewer->verticalScrollBar()->setSliderPosition(m_pDataViewer->verticalScrollBar()->maximum());
    }

    //try to connect to database
    if(!m_Database.isDatabaseConnected()) //if database is not already opened, open it
        if(!m_Database.connectToDB(QString::number(m_ClientId))) {  //if not, try opening it
            LOG_SYS(QString("Client %1 could not open database.  Please check configuration").arg(QString::number(m_ClientId)));
            QSqlDatabase::removeDatabase(QString::number(m_ClientId));
            return;
        }

//    //here we write data to database
//    qDebug() << QString("%1 %2 %3 %4 %5 %6 %7 %8 %9 %10 %11 %12 %13 %14\n")
//                .arg(temperature)
//                .arg(humidity)
//                .arg(nIonCount)
//                .arg(pIonCount)
//                .arg(windDirection)
//                .arg(windSpeed)
//                .arg(rainfall)
//                .arg(pressure)
//                .arg(ultraViolet)
//                .arg(oxygen)
//                .arg(PM1)
//                .arg(PM25)
//                .arg(PM10)
//                .arg(date);

    if(!m_Database.writeData(m_ClientId, date, temperature, humidity, nIonCount, pIonCount, windDirection,
                     windSpeed, rainfall, pressure, ultraViolet, oxygen, PM1, PM25, PM10, error))
        LOG_SYS(QString("Client %1 could not execute query.").arg(QString::number(m_ClientId)));
}

//disconnect the client when no data is being sent
void AClient::onDataTimeout()
{
    m_pDataStarvedTimer->stop();
    m_ClientState = eNoData;
}

void AClient::onSocketDisconnected()
{
    LOG_SYS(QString("Client %1 at %2 disconnected").arg(m_ClientId).arg(m_pSocket->peerAddress().toString()));

    if(m_pDataStarvedTimer->isActive()) {
        m_pDataStarvedTimer->stop();
    }

    this->thread()->quit();
    this->thread()->wait();
    m_Database.closeDB(QString::number(m_ClientId));
    m_ClientState = eOffline;
    m_TimeOfDisconnect = QDateTime::currentDateTime();
}

QString AClient::getClientState() const
{
    QString str = "";

    if(m_ClientState == eOnline)
        str = "Online";
    else if(m_ClientState == eNoData)
        str = "No Data";
    else if(m_ClientState == eOffline)
        str = "Offline";

    return str;
}

QString AClient::getClientConnectTime() const
{
    return m_TimeOfConnect.toString(QString("yyyy/MM/dd hh:mm:ss"));
}

QString AClient::getClientDisconnectTime() const
{
    if(!m_TimeOfDisconnect.isValid())
        return "";

    return m_TimeOfDisconnect.toString(QString("yyyy/MM/dd hh:mm:ss"));
}

QString AClient::getClientUpTime() const
{
    int seconds;

    if(m_ClientState == eOffline){
        seconds = m_TimeOfConnect.secsTo(m_TimeOfDisconnect);
    } else {
        seconds = m_TimeOfConnect.secsTo(QDateTime::currentDateTime());
    }

    if(seconds < 60)
        return QString("%1 sec").arg(seconds);

    if(seconds < 3600) {
        int minute = seconds / 60;
        int remain = seconds % 60;
        return QString("%1 min %2 sec").arg(minute).arg(remain);
    }

    int hour = seconds / 3600;
    int minSec = seconds % 3600;
    int minute = minSec / 60;

    return QString("%1 hr %2 min").arg(hour).arg(minute);
}

double AClient::convertToDecimal(const QByteArray &highByte, const QByteArray &lowByte)
{
    bool ok =false;
    int high = highByte.toHex().toInt(&ok, 16);
    int low = lowByte.toHex().toInt(&ok, 16);
    double decimal = 0;

    if(low < 100)
        decimal = low/100.0;
    else
        decimal = low/1000.0;

    double finalValue = 0;
    if(high >= 0)
        finalValue = high + decimal;
    else
        finalValue = high - decimal;

    return finalValue;
}
