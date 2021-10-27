CC=gcc
CFLAGS=-Wall -O2

all:
	$(CC) $(CFLAGS) bas2tap.c -o bas2hob -lm

clean:

	rm -f bas2tap
