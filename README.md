# Abook Adder

This is a simple little utility intended for adding all email addresses you see in mutt to abook.

Once installed, you can just add this line to your .muttrc:

```
set display_filter="abook_adder"
```

And all incoming email will be piped through abook. Abook will slurp up all the email addresses in it and add them in.

Simples!

## Installation

Choose your own adventure! Either:

#### Easy

```
sudo curl https://raw.githubusercontent.com/davidbanham/abook_adder/master/build/abook_adder > /usr/bin/abook_adder && sudo chmod +x /usr/bin/abook_adder
```

or:

#### DIY

```
git clone git@github.com:davidbanham/abook_adder.git
cd abook_adder
make && sudo make install
```
