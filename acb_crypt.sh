#!/bin/bash
#Cryptage des credentials
#zf170417.1528

gpg2 -c ../.muttrc
mv ../.muttrc.gpg ./muttrc.gpg
rm -R ../.gnupg
