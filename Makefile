CXX = g++
CXXFLAGS = -std=c++17 -Wall -Ilib
LDFLAGS = -lglfw -ldl

all: main

main: build/main.o build/glad.o
	$(CXX) $(CXXFLAGS) -o main build/main.o build/glad.o $(LDFLAGS)

build/main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c src/main.cpp -o build/main.o $(LDFLAGS)

build/glad.o: lib/glad/glad.c
	$(CXX) $(CXXFLAGS) -c lib/glad/glad.c -o build/glad.o $(LDFLAGS)

clean:
	rm -f main build/*.o
