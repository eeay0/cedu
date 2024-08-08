# Top-level directory
CHAPTERS := $(wildcard chapter*/)

# Find all .c files in the chapter directories
SRC := $(foreach dir, $(CHAPTERS), $(wildcard $(dir)*.c))

# Define object files and executables paths
OBJ := $(patsubst %.c,%.o,$(SRC))
EXE := $(patsubst %/,%/build/%,$(basename $(SRC)))

# Compiler and flags
CC := gcc
CFLAGS := -Wall -Wextra -std=c11

# Default target
all: $(EXE)

# Rule to build executables from object files
%/build/%: %.o | %/build
	$(CC) $< -o $@

# Rule to build object files from source files
%.o: %.c | %/build
	$(CC) $(CFLAGS) -c $< -o $@

# Create build directories
%/build:
	mkdir -p $@

# Clean target to remove built files
clean:
	rm -rf $(foreach dir, $(CHAPTERS), $(dir)build)

.PHONY: all clean
