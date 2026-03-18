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


