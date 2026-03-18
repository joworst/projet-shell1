#!/bin/bash

# =====================================================
# MODULE REPORT
# Ce script génère un rapport système complet
# =====================================================

# définition du fichier rapport

rapport="reports/report.txt"

# création du rapport (écrase l'ancien)

echo "===== RAPPORT SYSKIT =====" > "$rapport"

# ajout de la date
echo "Date : $(date)" >> "$rapport"

echo "" >> "$rapport"

# =====================================================
# 1. INFORMATIONS SYSTEME
# =====================================================

echo "===== INFORMATIONS SYSTEME =====" >> "$rapport"

# afficher les infos système
uname -a >> "$rapport"

echo "" >> "$rapport

# =====================================================
# 2. SAUVEGARDES REALISEES
# =====================================================

echo "===== SAUVEGARDES REALISEES =====" >> "$rapport"

# vérifier si le fichier backup.log existe
if [ -f logs/backup.log ]
then

# afficher le contenu    	
    cat logs/backup.log >> "$rapport"
else

# si aucune sauvegarde
    echo "Aucune sauvegarde réalisée" >> "$rapport"
fi

echo "" >> "$rapport"

# =====================================================
# 3. NOMBRE DE FICHIERS SUPPRIMES
# =====================================================

echo "===== NETTOYAGE =====" >> "$rapport"

# vérifier si le fichier cleanup.log existe
if [ -f logs/cleanup.log ]
then

# récupérer le nombre total de fichiers supprimés    
    total=0

# récupérer le nombre total de fichiers supprimés    
    while read ligne
    do
# extraire le nombre (premier mot de la ligne)        
        nombre=$(echo "$ligne" | awk '{print $1}')

# additionner        
        total=$((total + nombre))

    done < logs/cleanup.log

# afficher le total    
    echo "Nombre total de fichiers supprimés : $total" >> "$rapport"

else
    echo "Aucun nettoyage effectué" >> "$rapport"
fi

# message final
echo ""
echo "Rapport généré dans $rapport"
