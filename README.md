# Abook Adder

This is a simple little utility intended for adding all email addresses you see in mutt to abook.

Once installed, you can just add this line to your .muttrc:

```
set display_filter="abook_adder"
```

And all incoming email will be piped through abook. Abook will slurp up all the email addresses in it and add them in.

Simples!

## Installation

make && sudo make install
