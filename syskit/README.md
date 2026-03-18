
 ===Projet SysKit – Outil d’administration système en Bash===

# ⚙️ Fonctionnalités principales

###  1. Inventory – Informations système

Cette fonctionnalité permet d’afficher les informations essentielles du système :

* le système d’exploitation utilisé
* la version du noyau
* les caractéristiques du processeur
* la mémoire vive (RAM)
* l’espace disque disponible
* l’adresse IP de la machine

Elle permet à l’utilisateur d’avoir une vue globale de l’état de son système.



###  2. Backup – Sauvegarde de dossier

Cette fonction permet de créer une archive d’un dossier choisi par l’utilisateur.

Fonctionnement :

* vérification de l’existence du dossier
* création d’une archive au format `.tar`
* stockage de l’archive dans le dossier `backup/`
* enregistrement de l’action dans un fichier log

Cette fonctionnalité permet de sécuriser les données importantes.



###  3. Cleanup – Suppression des fichiers inutiles

Cette fonction permet de nettoyer un dossier en supprimant les fichiers inutiles :

* fichiers temporaires (`.tmp`)
* fichiers journaux (`.log`)

Fonctionnement :

* parcours du dossier avec une boucle
* suppression des fichiers ciblés
* comptage du nombre de fichiers supprimés
* enregistrement dans un fichier log

Cela permet d’optimiser l’espace de stockage.



###  4. Report – Génération d’un rapport

Cette fonctionnalité génère un fichier texte contenant un résumé du système :

* informations système
* liste des sauvegardes réalisées
* nombre total de fichiers supprimés

Le rapport est généré dans le dossier `reports/` et permet d’avoir une trace globale des actions effectuées.



##  Organisation du projet

Le projet est structuré de manière modulaire :

* syskit.sh : script principal
* modules/ : contient les différentes fonctionnalités
* backup/ : stocke les archives
* logs/ : enregistre les actions du programme
* reports/ : contient les rapports générés

Cette organisation permet une meilleure lisibilité et maintenance du code.

