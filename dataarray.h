#ifndef DATAARRAY_H
#define DATAARRAY_H

#include <QObject>
#include <QVector>
class DataArray : public QObject
{
    Q_OBJECT
public:
    DataArray();

private:
    QVector<int> rows;
    QVector<int> colums;
};

#endif // DATAARRAY_H
