CFLAGS  = -std=c99
CFLAGS += -g
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -pedantic
CFLAGS += -Werror
CFLAGS += -Wmissing-declarations
CFLAGS += -DUNITY_SUPPORT_64

hello: src/*.[c,h]
	@echo Compiling $@
	@$(CC) $(CFLAGS) src/*.c -o hello

test: tests.out
	@./tests.out

tests.out: test/*.[c,h] src/hello_world.[c,h]
	@echo Compiling $@
	@$(CC) $(CFLAGS) test/vendor/unity/src/unity.c src/hello_world.c test/*.c -o tests.out

clean:
	rm -rf *.o *.out *.dSYM hello
