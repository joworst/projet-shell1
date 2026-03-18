#!/bin/bash

show_os() {
echo "Système d'exploitation :"
uname -o
}

show_kernel() {
echo "Version du noyau :"
uname -r
}

show_cpu() {
echo "Processeur :"
lscpu | grep "Model name"
}

show_ram() {
echo "Mémoire RAM :"
free -h
}
