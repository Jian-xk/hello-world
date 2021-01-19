/*桶排序*/
#ifndef PAILSORT_H
#define PAILSORT_H
#include <stdio.h>

void use() {
    int i,j,n = 0;
    int a[1001];
    for (i = 0; i < 1000; i++)
        a[i] = 0;
    printf("输入总数： %d", n);
    for (int i = 0; i < n; i++) {
        scanf("%d",&j);
        a[j]++;
    }
    for (i = 0; i <= 1000; i++){
        for (j = 0; j <= a[i]; j++)
            printf("%d",i);
    }
    getchar();
}
#endif // PAILSORT_H
