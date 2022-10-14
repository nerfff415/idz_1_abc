#include <stdio.h>

void InputArray(int Array[10000], int countArray) {
    for (int i = 0; i < countArray; i++) {
        scanf("%d",&Array[i]);
    }
    return;
}

void FormNewArray(int Array[10000], int Brray[10000], int countArray, int* countBrray) {
    for (int i = 0; i < countArray; i++) {
        if (Array[i] > 0) {
            Brray[*countBrray] = i;
            (*countBrray)++;
        }
    }
    return;
}

void OutputArray(int Array[10000], int countArray) {
    printf("Сформированный массив B: ");
    for (int i = 0; i < countArray; i++) {
        printf("%d ", Array[i] + 1);
    }
    printf("\n");
    return;
}

int main(void) {
    int countA;
    int countB;
    int A [10000];
    int B [10000];
    printf("Введите длину массива А: ");
    scanf("%d", &countA);
    if (countA == 0) {
        printf("Массив А пуст!\n");
        return 0;
    }
    if (countA < 0 || countA > 10000) {
        printf("Неверное количество элементов массива А!\n");
        return 0;
    }
    printf("Введите массив А: ");
    InputArray(A, countA);
    FormNewArray(A, B, countA, &countB);
    OutputArray(B, countB);
}
