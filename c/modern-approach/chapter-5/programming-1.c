#include <stdio.h>

int main(void) {
    int num, digit_count = 1, temp_num;

    printf("Enter a number: ");
    scanf("%d", &num);
    temp_num = num;

    if (num < 9 && num > 0) {
        printf("The number %d has %d digit.", num, 1);
        return 0;
    }

    while (temp_num > 10) {
        temp_num /= 10;
        digit_count++;
    }

    printf("The number %d has %d digits.", num, digit_count);

    return 0;
}
