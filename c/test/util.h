#ifndef UTIL_H
#define UTIL_H

typedef struct output_error {
	char *out;
	int err;
} out_err;

char * read_file(char *fname);
out_err capture_out(void (*func)());

#endif
