CC = gcc
CFLAGS = -O2 -Wall -Wextra
SRC = src/main.c
BIN = bin/hello
PREFIX ?= /usr/local

.PHONY: all clean install

all: $(BIN)

$(BIN): $(SRC)
	mkdir -p bin
	$(CC) $(CFLAGS) -o $@ $(SRC)

install: $(BIN)
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 $(BIN) $(DESTDIR)$(PREFIX)/bin/hello

clean:
	rm -rf bin