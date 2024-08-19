#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#define PI 3.14

int main(void) {
    int r;

    printf("Enter the radious of the sphere: ");
    scanf("%d", &r);

    float volume  = 4.0f / 3.0f * PI * r * r * r;
    float volume2 = 4.0 / 3.0 * PI * r * r * r;

    printf("\nvolume: %f\nvolume2: %f\n", volume, volume2);

    return EXIT_SUCCESS;
}
