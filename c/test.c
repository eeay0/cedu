#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  char lines[100][100];
  char *input;
  char ch;
  int line_count = 0;
  int char_count = 0;
  printf("Enter text. Use \"Ctrl+d\" to cancel.");
  while ((ch = getchar()) != EOF) {
    if (ch != '\n') {
      lines[line_count][char_count++] = ch;
    } else if (ch == '\n') {
      line_count++;
      continue;
    }
  }

  return EXIT_SUCCESS;
}
