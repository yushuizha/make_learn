# learn makefile


CC := g++

#CXXFLAG = -std=c++11 -g
#HEADFILE_PATH = -I./include

.PHONY : all
all : main
	-mkdir build
	mv *.o main build

main : main.o tool.o
	$(CC) -o main main.o tool.o

main.o :
	$(CC) -c src/main.cpp -I./include

tool.o :
	$(CC) -c src/tool.cpp -I./include

.PHONY : clean
clean:
	-rm -r build



