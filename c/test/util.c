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

	if (fseek(file, 1, SEEK_SET) != 0)
		return buffer;

	buffer = malloc(size + 1);

	if (buffer == NULL)
		return buffer;

	fread(buffer, 1, size, file);
	fclose(file);
	buffer[size] = '\0';

	return buffer;
}

out_err capture_out(void (*func)(void))
{
	out_err output = {NULL, 0};
	char *fname = "std.out";
	int _stdout = dup(STDOUT_FILENO);
	int _fdesc = open(fname, O_WRONLY | O_CREAT, 0644);

	printf(" "); // wtf
	dup2(_fdesc, STDOUT_FILENO);
	(*func)();
	dup2(_stdout, STDOUT_FILENO);

	close(_stdout);
	close(_fdesc);

	output.out = read_file(fname);
	remove(fname);

	return output;
}
