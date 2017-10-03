OSTYPE := $(shell uname)

build/mutt_to_abook-Linux:
	GOOS=linux GOARCH=arm64 go build -o build/mutt_to_abook-Linux

build/mutt_to_abook-Darwin:
	GOOS=darwin GOARCH=amd64 go build -o build/mutt_to_abook-Darwin

all: build/mutt_to_abook-Linux build/mutt_to_abook-Darwin

install:
	cp ./build/mutt_to_abook-${OSTYPE} /usr/bin/mutt_to_abook
