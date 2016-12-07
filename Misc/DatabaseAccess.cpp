#include "DatabaseAccess.h"
#include "AppSettings.h"

DatabaseAccess::DatabaseAccess(QObject *pParent):
    QObject(pParent),
    m_ConnectionName("")
{

}

DatabaseAccess::~DatabaseAccess()
{
    if(QSqlDatabase::contains(m_ConnectionName)) {
        QSqlDatabase db = QSqlDatabase::database(m_ConnectionName);
        db.close();
    }

    QSqlDatabase::removeDatabase(m_ConnectionName);
}

bool DatabaseAccess::connectToDB(const QString &name)
{
    AppSettings settings;

    m_ConnectionName = name;
    QSqlDatabase db = QSqlDatabase::addDatabase("QODBC", m_ConnectionName);

    QString dsn = QString("Driver={sql server};server=%1;database=%2;uid=%3;pwd=%4;")
            .arg(settings.readDatabaseSettings("host", "").toString())
            .arg(settings.readDatabaseSettings("DbName", "").toString())
            .arg(settings.readDatabaseSettings("user", "").toString())
            .arg(settings.readDatabaseSettings("password", "").toString());

    db.setDatabaseName(dsn);
    if(db.open()) {
        return true;
    }

    qDebug() << "Database error: " << db.lastError().text();
    return false;
}

bool DatabaseAccess::isDatabaseConnected() const
{
    return QSqlDatabase::contains(m_ConnectionName);
}

bool DatabaseAccess::writeData(const int clientId, const QString &date, const double temperature,
                               const double humidity, const int nIon, const int pIon, const int windD,
                               const double windS, const double rain, const double pressure,
                               const double ultraviolet)
{
    QSqlDatabase db = QSqlDatabase::database(m_ConnectionName);
    QString queryStr;
    //TODO: construct query here
    QSqlQuery query = db.exec(queryStr);

    return query.isValid();
}
