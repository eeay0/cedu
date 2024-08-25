#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    int*  int_ptr;
    void* void_ptr;

    int num = 14;

    printf("=>");
    void_ptr = &num;

    printf("%d", *(int*)void_ptr);

    return EXIT_SUCCESS;
}
