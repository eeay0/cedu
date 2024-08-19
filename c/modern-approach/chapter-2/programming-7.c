#include <stdio.h>

int main(void) {
    int amount;
    int bills[4] = {20, 10, 5, 1};
    int bill_count[4];

    printf("Enter a dollar amount: ");
    scanf("%d", &amount);

    for (int i = 0; i < 4; i++) {
        bill_count[i]  = amount / bills[i];
        amount        %= bills[i];
    }

    printf("\n$20 bills: %d\n$10 bills: %d\n$5 bills: %d\n$1 bills: %d",
           bill_count[0],
           bill_count[1],
           bill_count[2],
           bill_count[3]);
    return 0;
}
