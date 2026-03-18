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
    
    cat logs/backup.log >> "$rapport"
else


    echo "Aucune sauvegarde réalisée" >> "$rapport"
fi

echo "" >> "$rapport"


echo "===== NETTOYAGE =====" >> "$rapport"


if [ -f logs/cleanup.log ]
then

    
    total=0

    
    while read ligne
    do
        
        nombre=$(echo "$ligne" | awk '{print $1}')

        
        total=$((total + nombre))

    done < logs/cleanup.log

    
    echo "Nombre total de fichiers supprimés : $total" >> "$rapport"

else
    echo "Aucun nettoyage effectué" >> "$rapport"
fi

# message final
echo ""
echo "Rapport généré dans $rapport"
