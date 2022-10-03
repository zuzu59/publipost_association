#!/bin/bash
#Démarrage de l'application
#zf170419.1157, zf221003.1419

#mutt -c christian.zufferey@gmail.com -s "Test d'envoi des cotisations 2017" christian.zufferey@epfl.ch < ./test.txt -a ./test.pdf
mutt -c fablab_renens_comite@googlegroups.com -s "Test d'envoi des cotisations 2022.1419" christian.zufferey@gmail.com < ./test.txt -a ./test.pdf
