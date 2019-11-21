# learn makefile


CC := g++


#CXXFLAG = -I./include -std=c++11 -g
CXXFLAG = -std=c++11 -g

.PHONY : all
all : main


main : main.o tool.o
	$(CC) -o main main.o tool.o

main.o : tool.h
	$(CC) -c main.cpp

tool.o : tool.h
	$(CC) -c tool.cpp

.PHONY : clean
clean:
	rm -r *.o main



