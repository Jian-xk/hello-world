/*功能：图灵机器人，与图灵机器人聊天
 *条件：需要联网
 *作者：杜都督
 *日期：2017/04/14
 */

#ifndef TURING_H
#define TURING_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>

class Turing : public QObject
{
    Q_OBJECT

public:

    explicit Turing(QObject *parent = 0);

    Q_INVOKABLE void send(const QString &str);

signals:

    void received(const QString &str);


private slots:
    void readReply(QNetworkReply *r);

private:
    void initNetwork();

private:
    QNetworkAccessManager    mNetworkManager;
    QNetworkRequest          mRequest;
    QString                  mStrUrl;
};

#endif // TURING_H
