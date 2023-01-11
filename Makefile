all: build

build:
	g++ -std=c++17 main.cpp -o main

test:
	./main

clean:
	rm -f main

docker:
	docker build -t myopenremote .
	docker run -p 8080:8080 myopenremote

.PHONY: all build test clean docker
