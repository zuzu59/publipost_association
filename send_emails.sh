#!/usr/bin/env bash
#send_emails, Publipostage groupé par email
#zf181223, zf201222.0046

echo ---------- send_emails start
echo "Certain que vous vouliez envoyer le publipostage ? (CTRL+C pour arrêter): " ; read


sed -i 's/\r$//g' liste_publipost.csv

while IFS=, read col1 col2 col3 col4 col5
do
  echo "Envoi de $col5 à $col4"

  mutt -c fablab_renens_comite@googlegroups.com -s "Fablab, $col5, $col4" $col4 < ./corps_email.txt -a "./annexes/$col5"
  sleep 2

done < liste_publipost.csv
