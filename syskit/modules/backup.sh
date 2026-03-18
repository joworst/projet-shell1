#!/bin/bash

# Récupère le premier argument passé au script
# (le dossier que l'utilisateur veut sauvegarder)
dossier="$1"

# Vérifie si aucun argument n'a été donné
# Si la variable dossier est vide, on affiche une erreur
if test "$dossier" = ""
then
echo "Erreur : veuillez donner un dossier"
exit 1    # exit 1 arrête le script avec un code d'erreur
fi


# Vérifie si le dossier donné existe
if test ! -d "$dossier"       # -d permet de tester si c'est bien un répertoire
then
echo "Erreur : dossier inexistant"
exit 1   # arrêt du script si le dossier n'existe pas
fi

# Récupère la date actuelle au format année-mois-jour
date=$(date +%Y-%m-%d)
nom=$(basename "$dossier")
mkdir -p backup
archive="backup/${nom}_${date}.tar"

tar -cvf "$archive" "$dossier"

echo "Sauvegarde créée : $archive"

# Ajoute le nom de l'archive dans un fichier log
echo "$archive" >> logs/backup.log
