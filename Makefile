.PHONY: valgrind format

bse: *.c
	$(CC) bse.c point.c history.c -o bse -Wall -Wextra -pedantic -std=c99

format:
	clang-format -i *.c *.h

install:
	sudo cp bse /usr/local/bin/bse
