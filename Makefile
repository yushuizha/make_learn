# learn makefile


CC := g++

CXXFLAG = -I./include
CXXFLAG += -std=c++11 -g

.PHONY : all
all : main
	-mkdir build
	mv *.o main build

main : main.o tool.o core.o
	$(CC) -o main main.o tool.o core.o

main.o :
	$(CC) -c src/main.cpp $(CXXFLAG)

tool.o :
	$(CC) -c src/tool.cpp $(CXXFLAG)

core.o :
	$(CC) -c src/core.cpp $(CXXFLAG)

.PHONY : clean
clean:
	-rm -r build



