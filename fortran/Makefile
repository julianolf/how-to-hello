FFLAGS  = -std=f2018
FFLAGS += -Wall
FFLAGS += -pedantic

hello: *.f90
	@echo Compiling $@
	@$(FC) $(FFLAGS) *.f90 -o $@

run: hello
	@./hello

clean:
	rm hello
