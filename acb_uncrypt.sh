#!/bin/bash
#Décryptage des credentials
#zf170417.1528, zf221003.1127

gpg2 muttrc.gpg
mv muttrc ~/.muttrc
rm -R ~/.gnupg
