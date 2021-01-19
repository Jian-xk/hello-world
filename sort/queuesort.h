/*队列排序*/
#ifndef QUEUESORT_H
#define QUEUESORT_H
#include <stdio.h>

//int
struct queue{
    int array[100];
    int head;
    int tail;
};
void use() {
    struct queue q;
    int i;
    q.head = 0;
    q.tail = 10;
    for(i=1;i<=9;i++)
    {
        //依次向队列插入9个数
        scanf("%d",&q.array[q.tail]);
        q.tail++;
    }
    while(q.head<q.tail) //当队列不为空的时候执行循环
    {
        //打印队首并将队首出队
        printf("%d ",q.array[q.head]);
        q.head++;

        //先将新队首的数添加到队尾
        q.array[q.tail]=q.array[q.head];
        q.tail++;
        //再将队首出队
        q.head++;
    }
    getchar();
}
#endif // QUEUESORT_H
