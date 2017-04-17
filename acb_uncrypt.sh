#!/bin/bash
#Décryptage des credentials
#zf170417.1528

gpg2 muttrc.gpg
mv muttrc ../.muttrc
rm -R ../.gnupg
