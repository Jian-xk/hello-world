#include <QCoreApplication>
//#include "pailsort.h"     //桶
//#include "quicksort.h"    //快速
//#include "bubbling.h"     //冒泡
//#include "queuesort.h"      //队列
#include "binary.h"         //二叉树

int main(int argc, char *argv[])
{
    QCoreApplication aexe(argc, argv);
    binary b;
    b.use();
    getchar();
    getchar();
    return aexe.exec();
}
