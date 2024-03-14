CFLAGS  = -std=c99
CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -pedantic
CFLAGS += -Werror
CFLAGS += -Wmissing-declarations

hello: *.c
	@echo Compiling $@
	@$(CC) $(CFLAGS) *.c -o $@

run: hello
	@./hello

clean:
	rm hello
