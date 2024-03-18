CXXFLAGS  = -std=c++98
CXXFLAGS += -Wall
CXXFLAGS += -Wextra
CXXFLAGS += -pedantic
CXXFLAGS += -Werror
CXXFLAGS += -Wmissing-declarations

hello: *.cpp
	@echo Compiling $@
	@$(CXX) $(CXXFLAGS) *.cpp -o $@

run: hello
	@./hello

clean:
	rm hello
