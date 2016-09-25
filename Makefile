CC=gcc
CFLAGS=-framework ApplicationServices -framework Carbon
SOURCES=keylogger.c
EXECUTABLE=bin/keylogger
PLIST=keylogger.plist
INSTALLDIR=/usr/local/bin

all: $(SOURCES)
	mkdir bin
	$(CC) $(SOURCES) $(CFLAGS) -o $(EXECUTABLE)
clean:
	rm $(EXECUTABLE)

