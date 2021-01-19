#ifndef DATAOPER_H
#define DATAOPER_H

#include <QHash>
#include <QVariant>
#include <QSharedPointer>

class DataVo;
class dataOper
{
public:
    enum Roles {
      Roles_Value = Qt::UserRole + 1,
      Roles_ValueColor,
    };

    static QHash<int, QByteArray> getRoleNames();
    static QVariant getRoleData(QSharedPointer<DataVo> pData, const int& role);
};

#endif // DATAOPER_H
