CFLAGS  = -std=c99
CFLAGS += -g
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -pedantic
CFLAGS += -Werror
CFLAGS += -Wmissing-declarations
CFLAGS += -DUNITY_SUPPORT_64

hello: src/main.c src/hello_world.c src/hello_world.h
	@echo Compiling $@
	@$(CC) $(CFLAGS) src/hello_world.c src/main.c -o hello

test: tests.out
	@./tests.out

tests.out: test/test_hello_world.c test/test_hello_world.h src/hello_world.c src/hello_world.h
	@echo Compiling $@
	@$(CC) $(CFLAGS) src/hello_world.c test/vendor/unity/src/unity.c test/test_hello_world.c -o tests.out

clean:
	rm -rf *.o *.out *.dSYM hello
