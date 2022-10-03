# publipost_association
zf181223.1931, zf201223.1010, zf221003.1431

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
	- [Crédentials pour déchiffrer le .muttrc](#crdentials-pour-dchiffrer-le-muttrc)

<!-- /TOC -->

Le travail d'un(e) secrétaire dans une association, chaque année, est d'envoyer un publipostage pour le renouvellement de la cotisation annuelle.

Quand il y a plus que quelques membres, il devient très vite fastidieux de le faire à la main.

Ce script permet donc d'envoyer un courrier électronique à chaque membres avec en annexe la qr-facture en pdf pour le renouvellement de la cotisation annuelle.


## Installation
Pour l'installation simplement faire:
```
./install.sh
```
ATTENTION: cela va installer par défaut les credentials pour le Fablab (qui ont été enregistrés chiffrés dans le fichier muttrc.gpg). Si on veut installer d'autres credentials, il faudra modifier le fichier ~/.muttrc !

## Pour crypter les *credentials* utilisés par Mutt (~/.muttrc)
```
acb_crypt.sh
```


## Pour décrypter les *credentials* utilisés par Mutt (~/.muttrc)
```
acb_uncrypt.sh
```


## Format des fichiers d'envoi
### Liste d'emails et annexes à envoyer
Le fichier, *liste_publipost.csv*, actuellement comporte 5x colonnes dont seules les deux dernières sont utilisées. Il faut modifier en conséquence le script d'envoi *send_emails.sh* si jamais.


### Texte d'accompagnement
Le fichier, *corps_email.txt*, contient le texte d'accompagnement.


### Dossier pour les annexes
Les annexes sont à mettre dans le dossier ./annexes


## Utilisation
### Pour juste tester si *mutt* fonctionne
```
./test_mutt.sh
```

### Pour envoyer le publipostage
```
./start.sh
```


## Débloquer un compte GMAIL
**ATTENTION:**
Depuis mai 2022, il faut créer un *mot de passe pour application* depuis cette page:
```
https://support.google.com/mail/answer/185833?authuser=1#
```
Mais ATTENTION, on ne peut le faire que SI on a activé l'authentification à DEUX facteurs !

Si on ne crée pas un *mot de passe pour application*, on aura l'erreur:
```
SASL authentication failed, Could not send the message
```
Et le compte va se vérouiller pour l'adresse IP que l'on a utilisé pour le publipostage.

Pour réactiver le compte si jamais bloqué:
```
https://accounts.google.com/DisplayUnlockCaptcha
```


## Problèmes avec des noms de fichiers avec des *accents*
Si on a des problèmes avec des noms de fichiers avec des *accents*, il faut faire pour *voir* les accents:
```
ls > toto.txt
cat -A toto.txt
```

## Crédentials pour déchiffrer le .muttrc
Mes *crédentials* se trouvent dans mon KeePass ;-)
