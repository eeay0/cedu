#include <stdio.h>

int main(void) {
    int   number;
    float price;
    char  date[11];

    printf("Enter item number: ");
    scanf("%d", &number);
    printf("Enter unit price: ");
    scanf("%f", &price);
    printf("Enter purchase date: ");
    scanf("%s", date);

    printf("Item\t\tUnit\t\tPurchase\n");
    printf("    \t\tPrice\t\tDate\n");
    printf("%-4d\t\t$%.2f\t\t%-7s", number, price, date);
}
