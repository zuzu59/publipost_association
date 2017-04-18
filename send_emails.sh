#!/usr/bin/env bash
#send_emails, Publipostage groupé par email
#zf170418.1657

echo ---------- send_emails start
echo "Certain que vous vouliez envoyer le publipostage ? (CTRL+C pour arrêter): " ; read




while IFS=, read col1 col2
do
    echo "Envoi de $col2 à $col1"

  mutt -s "Fablab, cotisations 2017" $col1 < ./corps_email.txt -a ./annexes/$col2
  sleep 3

done < liste_publipost.csv
