#!/usr/bin/env bash
#send_emails, Publipostage groupé par email
#zf170418.1657

echo ---------- send_emails start
echo "Certain que vous vouliez envoyer le publipostage ? (CTRL+C pour arrêter): " ; read




while IFS=, read col1 col2 col3 col4 col5
do
  echo "Envoi de $col5 à $col4"

  mutt -s "Fablab, cotisations 2017" $col4 < ./corps_email.txt -a "./annexes/$col5"
  sleep 1

done < liste_publipost.csv
