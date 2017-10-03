# Abook Adder

This is a simple little utility intended for adding all email addresses you see in mutt to abook.

Once installed, you can just add this line to your .muttrc:

```
set display_filter="mutt_to_abook"
```

And all incoming email will be piped through abook. Abook will slurp up all the email addresses in it and add them in.

Simples!

## Installation

Do you have go installed?

#### Yep!

```
go get github.com/davidbanham/abook_adder
```

#### Nope.

(Linux and OSX only)
```
sudo curl --fail https://raw.githubusercontent.com/davidbanham/mutt_to_abook/master/build/mutt_to_abook-`echo $OSTYPE` -o /usr/bin/mutt_to_abook && sudo chmod +x /usr/bin/mutt_to_abook
```

#### DIY

```
git clone git@github.com:davidbanham/mutt_to_abook.git
cd mutt_to_abook
make && sudo make install
```
