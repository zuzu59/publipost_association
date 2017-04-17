#!/bin/bash
#Installation de l'application
#zf170417.2300

echo "ATTENTION, il ne faut pas configurer Mutt quand on nous le demande !" ; read

sudo apt-get update
sudo apt-get install -y mutt

./acb_uncrypt.sh

mkdir -p ~/.mutt/cache
