#ifndef DATAVO_H
#define DATAVO_H

#include <QObject>

class DataVo : public QObject
{
public:
    DataVo();

private:
    int m_nValue = 0;
    QString m_sValueColor;
};

#endif // DATAVO_H
