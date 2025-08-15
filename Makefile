CXX = g++
CXXFLAGS = -std=c++17 -Wall -Iinclude
LDFLAGS = -lglfw -ldl

all: main

main: build/main.o build/glad.o
	$(CXX) $(CXXFLAGS) -o main build/main.o build/glad.o $(LDFLAGS)

build/main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c src/main.cpp -o build/main.o $(LDFLAGS)

build/glad.o: src/glad.c
	$(CXX) $(CXXFLAGS) -c src/glad.c -o build/glad.o $(LDFLAGS)

clean:
	rm -f main *.o
