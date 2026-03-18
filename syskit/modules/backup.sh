#!/bin/bash

dossier="$1"

if test "$dossier" = ""
then
echo "Erreur : veuillez donner un dossier"
exit 1
fi

if test ! -d "$dossier" 
then
echo "Erreur : dossier inexistant"
exit 1
fi
