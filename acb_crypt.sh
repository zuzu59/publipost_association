#!/bin/bash
#Cryptage des credentials
#zf170417.1528, zf221003.1417

gpg2 -c ~/.muttrc
mv ~/.muttrc.gpg ./muttrc.gpg
rm -R ~/.gnupg
