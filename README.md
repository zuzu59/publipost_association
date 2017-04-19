# publipost_association

Le travail d'un(e) secrétaire dans une association, chaque année, est d'envoyer un publipostage pour le renouvellement de la cotisation annuelle.
<br>
Quand il y a plus que quelques membres, il devient très vite fastidieux de le faire à la main.
<br>
Ce script permet donc d'envoyer un courrier électronique à chaque membres avec en annexe la facture en pdf pour le renouvellement de la cotisation annuelle.
<br>
## Installation
**``./install.sh``**
<br>
## Pour crypter les *credentials* utilisés par Mutt (/.muttrc)
**``acb_crypt.sh``**
<br>
## Pour décrypter les *credentials* utilisés par Mutt (/.muttrc)
**``acb_uncrypt.sh``**
<br>
## Format des fichiers d'envoi
### Liste d'emails et annexes à envoyer
Le fichier, *liste_publipost.csv*, actuellement comporte 5x colonnes dont seules les deux dernières sont utilisées. Il faut modifier en conséquence le script d'envoi send_emails.sh<br>
### Texte d'accompagnement
Le fichier, *corps_email_bienvenue_2017.txt*, contient le texte d'accompagnement<br>
<br>
## Utilisation
### Pour juste tester si *mutt* fonctionne
**``./test_mutt.sh``**<br>
### Pour envoyer le publipostage
**``./start.sh``**<br>
<br>
## Débloquer un compte GMAIL
Il faut autoriser le compte GMAIL à être utilisé pas autre chose que le client Gmail:<br>
https://myaccount.google.com/security#connectedapps<br>
Autrement le compte se vérouille pour l'adresse IP que l'on a utilisé pour le publipostage. Pour réactiver le compte si jamais bloqué:<br>
https://accounts.google.com/DisplayUnlockCaptcha

