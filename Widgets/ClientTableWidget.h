#ifndef CLIENTTABLEWIDGET_H
#define CLIENTTABLEWIDGET_H

#include <QWidget>
#include <QTableWidget>

class TheServer;

class ClientTableWidget : public QTableWidget
{
    Q_OBJECT

public:
    ClientTableWidget(TheServer *pServer, QWidget *pParent = 0);
    ~ClientTableWidget();

private:
    void setupTable();

    void mousePressEvent(QMouseEvent *event);

    //This is the data source
    TheServer *m_pServer;

    //How often we update the table
    QTimer *m_pUpdateTimer;

private slots:
    void showContextMenu(const QPoint&);
    void updateTable();

    void onMessageViewerTriggered();
};


#endif // CLIENTTABLEWIDGET_H
