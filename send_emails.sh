#!/usr/bin/env bash
#send_emails, Publipostage groupé par email
#zf170419.1454

echo ---------- send_emails start
echo "Certain que vous vouliez envoyer le publipostage ? (CTRL+C pour arrêter): " ; read




while IFS=, read col1 col2 col3 col4 col5
do
  echo "Envoi de $col5 à $col4"

  mutt -c fablab_renens_comite@googlegroups.com -s "Fablab, $col5, $col4" $col4 < ./corps_email_bienvenue_2017.txt -a "./annexes/$col5"
  sleep 2

done < liste_publipost.csv
