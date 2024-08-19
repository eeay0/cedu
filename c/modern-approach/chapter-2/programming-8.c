#include <stdio.h>

int main(void) {
    float loan, interest, payment;
    int   count = 0;

    printf("Enter the amount of the loan: ");
    scanf("%f", &loan);

    printf("Enter the interest rate: ");
    scanf("%f", &interest);

    printf("Enter the monthly payment: ");
    scanf("%f", &payment);
    printf("\n");

    float m_interest = interest / 100 / 12;

    while (loan > 0) {
        if (loan - payment < 0) {
            loan = 0;
            count++;
            printf("Payment %d, Loan: %.2f\n", count, loan);
            break;
        }
        loan += loan * m_interest;
        loan  = loan - payment;
        count++;
        printf("Payment %d, Loan: %.2f\n", count, loan);
    }
    printf("\nTotal payment: %.2f", payment * count);
}
