/*冒泡排序*/
#ifndef BUBBLING_H
#define BUBBLING_H
#include <stdio.h>

int array[10];
void bubblingsort() {
    int temp = 0;
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < (10 - i); j++) {
            if (array[j] < array[j + 1]){
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
    for (int i = 0; i < 10; i++) {
        printf("%d ", array[i]);
    }
}
void use() {
    for (int i = 0; i < 10 ; i++){
        scanf("%d",&array[i]);
    }
    bubblingsort();
    getchar();
}
#endif // BUBBLING_H
