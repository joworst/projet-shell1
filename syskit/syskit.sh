#!/bin/bash

# =====================================================
# SCRIPT PRINCIPAL : syskit.sh
# Ce script permet de lancer les différentes fonctionnalités
# du projet (inventory, backup, cleanup, report)
# =====================================================

# récupération de la première commande entrée par l'utilisateur

commande="$1"

# -----------------------------------------------------
# Vérification si aucune commande n'a été donnée
# -----------------------------------------------------
if test  "$commande" = ""
then
echo "Erreur : aucune commande donnée"
echo "Usage : ./syskit.sh {inventory|backup|cleanup|report}"
exit 1  # arrêt du programme
fi 

# -----------------------------------------------------
# Structure de décision pour choisir la fonctionnalité
# -----------------------------------------------------

case "$commande" in

inventory)# appel du module inventory
bash modules/inventory.sh
;;

backup)# appel du module backup
bash modules/backup.sh "$2"
;;

cleanup)# appel du module cleanup
bash modules/cleanup.sh "$2"
;;

report)# appel du module report
bash modules/report.sh
;;

*) # cas où la commande n'existe pas
echo "Commande inconnue"
;;

esac
