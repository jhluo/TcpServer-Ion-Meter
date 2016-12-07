﻿#ifndef DATABASEACCESS_H
#define DATABASEACCESS_H

#include <QtSql>


class DatabaseAccess : public QObject
{
        Q_OBJECT

public:
    explicit DatabaseAccess(QObject *pParent=0);
    ~DatabaseAccess();

    bool connectToDB(const QString &name);
    bool writeData(const int clientId, const QString &date, const double temperature,
                   const double humidity, const int nIon, const int pIon, const int windD,
                   const double windS, const double rain, const double pressure,
                   const double ultraviolet);

    bool isDatabaseConnected() const;

private:
    QString m_ConnectionName;
};

#endif // DATABASEACCESS_H

