build/mutt_to_abook-linux-gnu:
	GOOS=linux GOARCH=arm64 go build -o build/mutt_to_abook-linux-gnu

build/mutt_to_abook-darwin:
	GOOS=darwin GOARCH=amd64 go build -o build/mutt_to_abook-darwin

all: build/mutt_to_abook-linux-gnu build/mutt_to_abook-darwin

install:
	cp mutt_to_abook /usr/bin
