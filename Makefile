build/mutt_to_abook:
	go build -o build/mutt_to_abook

install:
	cp mutt_to_abook /usr/bin
