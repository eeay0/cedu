# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -std=c11

# Source files
SRC = $(wildcard *.c)

# Build directory
BUILD_DIR = build

# Executables
EXE = $(patsubst %.c, $(BUILD_DIR)/%, $(SRC))

# Default rule
all: $(BUILD_DIR) $(EXE) last

# Create build directory if it does not exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Rule to build each executable
$(BUILD_DIR)/%: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@

# Rule to copy the last compiled file to 'last'
last: $(EXE)
	cp $(lastword $(EXE)) $(BUILD_DIR)/last

# Clean up build directory
clean:
	rm -rf $(BUILD_DIR)

# Phony targets
.PHONY: clean all last
