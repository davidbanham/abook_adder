build/abook_adder:
	go build -o build/abook_adder

install:
	cp abook_adder /usr/bin
