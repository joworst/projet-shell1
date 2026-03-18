#!/bin/bash


rapport="reports/report.txt"


echo "===== RAPPORT SYSKIT =====" > "$rapport"


echo "Date : $(date)" >> "$rapport"

echo "" >> "$rapport"


echo "===== INFORMATIONS SYSTEME =====" >> "$rapport"


uname -a >> "$rapport"

echo "" >> "$rapport

echo "===== SAUVEGARDES REALISEES =====" >> "$rapport"

# vérifier si le fichier backup.log existe
if [ -f logs/backup.log ]
then
    # afficher le contenu
    cat logs/backup.log >> "$rapport"
else
