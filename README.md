# publipost_association
zf181223.1931, zf201222.0054

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [publipost_association](#publipostassociation)
	- [Installation](#installation)
	- [Pour crypter les *credentials* utilisés par Mutt (~/.muttrc)](#pour-crypter-les-credentials-utiliss-par-mutt-muttrc)
	- [Pour décrypter les *credentials* utilisés par Mutt (~/.muttrc)](#pour-dcrypter-les-credentials-utiliss-par-mutt-muttrc)
	- [Format des fichiers d'envoi](#format-des-fichiers-denvoi)
		- [Liste d'emails et annexes à envoyer](#liste-demails-et-annexes-envoyer)
		- [Texte d'accompagnement](#texte-daccompagnement)
		- [Dossier pour les annexes](#dossier-pour-les-annexes)
	- [Utilisation](#utilisation)
		- [Pour juste tester si *mutt* fonctionne](#pour-juste-tester-si-mutt-fonctionne)
		- [Pour envoyer le publipostage](#pour-envoyer-le-publipostage)
	- [Débloquer un compte GMAIL](#dbloquer-un-compte-gmail)
	- [Problèmes avec des noms de fichiers avec des *accents*](#problmes-avec-des-noms-de-fichiers-avec-des-accents)

<!-- /TOC -->

Le travail d'un(e) secrétaire dans une association, chaque année, est d'envoyer un publipostage pour le renouvellement de la cotisation annuelle.
<br>
Quand il y a plus que quelques membres, il devient très vite fastidieux de le faire à la main.
<br>
Ce script permet donc d'envoyer un courrier électronique à chaque membres avec en annexe la facture en pdf pour le renouvellement de la cotisation annuelle.
<br>
## Installation
**``./install.sh``**
<br>
## Pour crypter les *credentials* utilisés par Mutt (~/.muttrc)
**``acb_crypt.sh``**
<br>
## Pour décrypter les *credentials* utilisés par Mutt (~/.muttrc)
**``acb_uncrypt.sh``**
<br>
## Format des fichiers d'envoi
### Liste d'emails et annexes à envoyer
Le fichier, *liste_publipost.csv*, actuellement comporte 5x colonnes dont seules les deux dernières sont utilisées. Il faut modifier en conséquence le script d'envoi send_emails.sh<br>
### Texte d'accompagnement
Le fichier, *corps_email.txt*, contient le texte d'accompagnement<br>
<br>
### Dossier pour les annexes
Les annexes sont à mettre dans le dossier ./annexes
## Utilisation
### Pour juste tester si *mutt* fonctionne
**``./test_mutt.sh``**<br>
### Pour envoyer le publipostage
**``./start.sh``**<br>
<br>
## Débloquer un compte GMAIL
Il faut autoriser le compte GMAIL à être utilisé pas autre chose que le client Gmail:<br>
Il faut aller dans la partie security:<br>
https://myaccount.google.com/security<br>
et chercher Less secure app access ! Et dire que l'on veut moins de sécurité, autrement il y aura l'erreur:<br>
SASL authentication failed, Could not send the message<br>
Autrement le compte se vérouille pour l'adresse IP que l'on a utilisé pour le publipostage. Pour réactiver le compte si jamais bloqué:<br>
https://accounts.google.com/DisplayUnlockCaptcha

## Problèmes avec des noms de fichiers avec des *accents*
Si on a des problèmes avec des noms de fichiers avec des *accents*, il faut faire pour *voir* les accents:
```
ls > toto.txt
cat -A toto.txt
```
