.PHONY: clean test build

all: build

build: clean configure compile

install: clean configure compile
	node-waf install

configure:
	node-waf configure

compile:
	node-waf build

clean:
	rm -Rf build


