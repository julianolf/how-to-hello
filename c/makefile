CFLAGS  = -std=c99
CFLAGS += -g
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -pedantic
CFLAGS += -Werror
CFLAGS += -Wmissing-declarations

hello: src/main.c src/hello_world.c src/hello_world.h
	@echo Compiling $@
	@$(CC) $(CFLAGS) src/hello_world.c src/main.c -o hello

clean:
	rm -rf *.o *.out *.dSYM hello
