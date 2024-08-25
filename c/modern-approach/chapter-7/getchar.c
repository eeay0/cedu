#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    char ch;
    printf("Enter string: ");
    while ((ch = getchar()) != '\n') { putchar(ch); }
    return EXIT_SUCCESS;
}
