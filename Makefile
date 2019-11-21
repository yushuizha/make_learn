# learn makefile


CC := g++

CXXFLAG = -I./include
CXXFLAG += -std=c++11 -g

.PHONY : all
all : main
	-mkdir build
	mv *.o *.a main build

main : main.o libtool.a
	$(CC) -o main main.o libtool.a

main.o :
	$(CC) -c src/main.cpp $(CXXFLAG)

libtool.a : tool.o core.o
	ar r libtool.a tool.o core.o

tool.o core.o:
	$(CC) -c src/tool.cpp src/core.cpp $(CXXFLAG)

.PHONY : clean
clean:
	-rm -r build



