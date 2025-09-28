//  Name - Win Yu Maung
//  ID - 6612054

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 10000

int main() {
    // Dynamic allocation
    int **arr = (int**)malloc(N * sizeof(int*));
    for (int i = 0; i < N; i++) {
        arr[i] = (int*)calloc(N, sizeof(int));
    }
    
    clock_t start, end;
    long long sum = 0;

    // Row-major access
    start = clock();
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            sum += arr[i][j];
        }
    }
    end = clock();
    printf("Row-major (dynamic) time: %f sec\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Column-major access
    start = clock();
    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            sum += arr[i][j];
        }
    }
    end = clock();
    printf("Column-major (dynamic) time: %f sec\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Cleanup
    for (int i = 0; i < N; i++) {
        free(arr[i]);
    }
    free(arr);

    return 0;
}