CC := gcc
CFLAGS := -O2 -Wall

.PHONY: all
all: build/main

build/main: main.c
	mkdir -p build
	$(CC) $(CFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -rf build
