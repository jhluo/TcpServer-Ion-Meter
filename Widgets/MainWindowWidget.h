#ifndef MAINWINDOWWIDGET_H
#define MAINWINDOWWIDGET_H

#include <QWidget>
#include <QPushButton>
#include <QLineEdit>
#include <QComboBox>
#include <QCheckBox>
#include <QTextEdit>

class TheServer;
class ChartViewer;
class ClientTableWidget;

class MainWindowWidget : public QWidget
{
    Q_OBJECT

public:
    MainWindowWidget(TheServer *pApp, QWidget *parent = 0);
    ~MainWindowWidget();

private:
    void createLayout();
    void populateWidgets();

    ClientTableWidget *m_pClientTable;
    QTextEdit *m_pLogEdit;

    TheServer *m_pServer;

private slots:

};

#endif // MAINWINDOWWIDGET_H
