#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
    char lines[100][100];
    char ch;
    int  line_count = 0;
    int  char_count = 0;

    printf("Enter text. Use \"Ctrl+d\" to cancel.\n\n=> ");

    while ((ch = getchar()) != EOF) {
        if (ch != '\n') {
            lines[line_count][char_count++] = ch;
        } else if (ch == '\n') {
            lines[line_count][char_count] = '\0';
            char_count                    = 0;
            printf("\nline count: %d\n", line_count + 1);
            printf("Stored lines:\n");
            for (int i = 0; i <= line_count; i++) { printf("%d      %s\n", i, lines[i]); }
            line_count++;
            printf("\n=> ");
        }
    }

    return EXIT_SUCCESS;
}
