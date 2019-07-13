#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "util.h"

char * read_file(char *fname)
{
	char *buffer = NULL;
	long size = 0L;
	FILE *file = fopen(fname, "rb");

	if (file == NULL)
		return buffer;

	if (fseek(file, 0, SEEK_END) != 0)
		return buffer;

	size = ftell(file);

	if (size == -1L)
		return buffer;

	if (fseek(file, 0, SEEK_SET) != 0)
		return buffer;

	buffer = malloc(size + 1);

	if (buffer == NULL)
		return buffer;

	fread(buffer, 1, size, file);
	fclose(file);
	buffer[size] = '\0';

	return buffer;
}

out_err capture_out(void (*func)())
{
	out_err output = {NULL, 0};
	int _stdout = dup(1);
	char *fname = "std.out";
	FILE *file = fopen(fname, "w");

	if (file == NULL) {
		output.err = 1;
		return output;
	}

	fclose(file);
	int fdescriptor = open(fname, O_WRONLY | O_APPEND);
    printf(""); // wtf
	dup2(fdescriptor, 1);
	(*func)();
	dup2(_stdout, 1);
	close(_stdout);
	output.out = read_file(fname);
	remove(fname);

	return output;
}
