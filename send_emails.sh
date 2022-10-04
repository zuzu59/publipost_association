#!/usr/bin/env bash
#send_emails, Publipostage groupé par email
#zf181223, zf201223.0939, zf221004.1355

echo ---------- send_emails start
echo "Certain que vous vouliez envoyer le publipostage ? (CTRL+C pour arrêter): " ; read


sed -i 's/\r$//g' liste_publipost.csv

while IFS=, read col1 col2 col3 col4 col5 col6 col7 col8 col9
do
  echo "Envoi de $col9 à $col8"
  LS_ARG="./annexes/$col1*"
  ls -al $LS_ARG

  echo "-c fablab_renens_comite@googlegroups.com -s \"Fablab de Renens, cotisations 2021/2022\" $col8 < ./corps_email.txt -a $col9"
  mutt -c fablab_renens_comite@googlegroups.com -s \"Fablab de Renens, cotisations 2021/2022\" $col8 < ./corps_email.txt -a $col9

  sleep 2
done < liste_publipost.csv
