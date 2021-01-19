#include "dataoper.h"


QHash<int, QByteArray> dataOper::getRoleNames()
{
    QHash<int, QByteArray> roles;
    roles.insert(Roles_Value, QByteArray("value"));
    roles.insert(Roles_ValueColor, QByteArray("valueColor"));

    return roles;
}

QVariant dataOper::getRoleData(QSharedPointer<DataVo> pData, const int &role)
{
    switch (role) {
    case Roles_Value:
//        return pData->m_nValue;
    case Roles_ValueColor:
//        return pData->m_sValueColor;
    default:
        break;
    }
    return QVariant();
}
