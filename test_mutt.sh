#!/bin/bash
#Démarrage de l'application
#zf170417.1458

mutt -s "Test d'envoi des cotisations 2017" christian.zufferey@epfl.ch < ./corps_email.txt -a ./test.pdf
