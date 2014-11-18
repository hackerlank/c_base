cc = g++
SRC_DIR = ./source

CFLAGS = -g

.PHONY:all
all: base

test: error.cpp error_test.cpp
	cc $(CFLAGS) -o test.app $(SRC_DIR)/error.cpp $(SRC_DIR)/error_test.cpp 

base: error.cpp
	cc $(CFLAGS) -c $(SRC_DIR)/error.cpp 

.PHONY:clean
clean:
	-rm -f *.app
	-rm -f *.o
	-rm -rf *.dSYM
