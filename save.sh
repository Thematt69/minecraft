#!/bin/bash

VERSION=1.0
AUTHOR="Matthieu DEVILLIERS <matthieu@devilliers.fr>"
LOGDIR=logs
DATE=$(date +%d-%m-%Y)
TIME=$(date +%H:%M)
DATETIME="$DATE - $TIME"

#colors
YELLOW="\033[1;93m"
RED="\033[1;31m"
GREEN="\033[1;32m"

printer(){
	local display_name=$1
	local msg=$2
	local color_display_name=$3
	local end_color="\e[0m"

    echo -e "[$color_display_name ${display_name^^} $end_color] : $color_display_name $msg $end_color"
}

search(){
    local name=$1

    grep "$name" server.properties|cut -d'=' -f2
}

#Permet de trouver une varaiable dans server.properties
#search "level-name"

# Récupération du GitHub
printer "Git" "Récupération des dernières modifications..." "$YELLOW"
git pull --autostash >> "$LOGDIR"/git/"$DATETIME".log 2>&1

# Ajout de tous les nouveaux fichiers sur le git
printer "Git" "Ajout des fichiers non répertorié..." "$YELLOW"
git add . >> "$LOGDIR"/git/"$DATETIME".log 2>&1

# Regarde si il y a des changements avec le dernier commit
if [ -n "$(git status --porcelain)" ]; then
    printer "Git" "Changements trouvées !" "$RED"
    read -p 'Voulez-vous continuer ? (y/n)' response
    if [ $response = "n" ] || [ $response = "no" ] || [ $response = "non" ]; then 
        printer "Git" "Abandon de la sauvegarde !" "$RED"
        exit $?
    fi
else
    printer "Git" "Aucun changement trouvé" "$GREEN"
fi

# Commit sur GitHub
printer "Git" "Préparation du commit..." "$YELLOW"
git commit -m "Save $DATETIME" >> "$LOGDIR"/git/"$DATETIME".log 2>&1

# Push sur GitHub
printer "Git" "Envoi vers GitHub..." "$RED"
git push >> "$LOGDIR"/git/"$DATETIME".log 2>&1

printer "Git" "Sauvegarde terminé !" "$GREEN"