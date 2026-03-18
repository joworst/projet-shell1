#!/bin/bash

chemin="$1"
count=0

if test "$chemin" = ""
then
echo "Erreur : chemin manquant"
exit 1
fi

if test ! -d "$chemin" 
then
echo "Erreur : dossier invalide"
exit 1
fi

do

if [[ "$fichier" == *.tmp || "$fichier" == *.log || "$fichier" == *.tar ]]
then

rm "$fichier"
echo "Supprimé : $fichier"

count=$((count+1))

fi

done

echo "$count fichiers supprimés"

echo "$count fichiers supprimés le $(date)" >> logs/cleanup.log
