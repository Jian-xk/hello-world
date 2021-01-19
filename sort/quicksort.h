/*快速排序*/
#ifndef QUICKSORT_H
#define QUICKSORT_H

#include <stdio.h>

int a[101],n;
void quicksort(int left,int right)
{
    int i,j,t,temp;
    if (left>right)
        return;
    temp=a[left];//temp存基准数
    i=left;
    j=right;
    while (i!=j) {
        //顺序很重要,要从右边开始找
        while (a[j]>=temp && i<j) {
            j--;
        }
        while (a[i]<=temp && i<j) {
            i++;
        }
        if (i<j) {
            t=a[i];
            a[i]=a[j];
            a[j]=t;
        }
    }
    a[left]=a[i];
    a[i]=temp;
    quicksort(left,i-1);//继续处理左边的
    quicksort(i+1,right);//继续处理右边的
}
void use() {
    int i;
    scanf("%d",&n);
    for (i=1;i<=n;i++) {
        scanf("%d",&a[i]);
    }
    quicksort(1,n);
    for (i = 1; i <= n; i++) {
        printf("%d ",a[i]);
    }
}
#endif // QUICKSORT_H
