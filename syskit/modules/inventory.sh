#!/bin/bash
# Ce script affiche différentes informations sur le système Linux
# Fonction qui affiche le système d'exploitation utilisé
show_os() {
echo "Système d'exploitation :"
uname -o
} # uname -o affiche le nom du système d'exploitation

# Fonction qui affiche la version du noyau Linux
show_kernel() {
echo "Version du noyau :"
uname -r
} # uname -r affiche la version du kernel (noyau)


# Fonction qui affiche les informations sur le processeur
show_cpu() {
echo "Processeur :"
lscpu | grep "Model name"
}  # lscpu affiche les informations du CPU
    # grep permet de filtrer uniquement la ligne contenant "Model name"


 # Fonction qui affiche l'état de la mémoire RAM   
show_ram() {
echo "Mémoire RAM :" # free -h affiche l'utilisation de la RAM en format lisible (h = human readable)
free -h
}

# Fonction qui affiche l'espace disque disponible
show_disk() {
echo "Espace disque :"
df -h
}   # df -h affiche l'utilisation des disques avec une taille lisible


# Fonction qui affiche l'adresse IP de la machine
show_ip() {
echo "Adresse IP :"   # hostname -I affiche les adresses IP de l'ordinateur
hostname -I
}

# Titre affiché avant les informations système
echo "===== INVENTORY ====="


# Appel des fonctions pour afficher toutes les informations
show_os
show_kernel
show_cpu
show_ram
show_disk
show_ip
