#!/bin/bash
#Démarrage de l'application
#zf170419.1157

mutt -c christian.zufferey@gmail.com -s "Test d'envoi des cotisations 2017" christian.zufferey@epfl.ch < ./test.txt -a ./test.pdf
