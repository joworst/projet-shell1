#!/bin/bash

# Récupère le chemin passé en argument
chemin="$1"
# Initialise un compteur de fichiers supprimés
count=0

# Vérifie si aucun argument n’a été donné
if test "$chemin" = ""
then
echo "Erreur : chemin manquant"
exit 1
fi
# Vérifie si le chemin fourni est bien un dossier existant

if test ! -d "$chemin" 
then
echo "Erreur : dossier invalide"
exit 1
fi

# Parcourt tous les fichiers du dossier
for fichier in "$chemin"/*
do

 # Vérifie si le fichier a une extension .tmp, .log ou .tar	
if [[ "$fichier" == *.tmp || "$fichier" == *.log || "$fichier" == *.tar ]]
then

# Supprime le fichier	
rm "$fichier"

# Affiche le nom du fichier supprimé
echo "Supprimé : $fichier"

# Incrémente le compteur
count=$((count+1))

fi

done

# Affiche le nombre total de fichiers supprimés
echo "$count fichiers supprimés"

# Ajoute un log avec la date dans le fichier logs/cleanup.log
echo "$count fichiers supprimés le $(date)" >> logs/cleanup.log
