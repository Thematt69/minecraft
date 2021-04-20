#!/bin/bash

VERSION=1.1
AUTHOR="Matthieu DEVILLIERS <matthieu@devilliers.fr>"
LOGDIR=logs/git
DATE=$(date +%d-%m-%Y)
TIME=$(date +%H-%M)
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

# Permet de trouver une variable dans server.properties
#search "level-name"

# Récupération du GitHub
printer "Git" "Récupération des dernières modifications..." "$YELLOW"
"[Git] Récupération des dernières modifications..." >> "$LOGDIR"/"$DATETIME".log 2>&1
git pull --autostash >> "$LOGDIR"/"$DATETIME".log 2>&1

# Ajout de tous les nouveaux fichiers sur le git
printer "Git" "Ajout des fichiers non répertorié..." "$YELLOW"
"[Git] Ajout des fichiers non répertorié..." >> "$LOGDIR"/"$DATETIME".log 2>&1
git add . >> "$LOGDIR"/"$DATETIME".log 2>&1

# Regarde si il y a des changements avec le dernier commit
if [ -n "$(git status --porcelain)" ]; then
    printer "Git" "Changements trouvées !" "$RED"
    "[Git] Changements trouvées !" >> "$LOGDIR"/"$DATETIME".log 2>&1
else
    printer "Git" "Aucun changement trouvé" "$GREEN"
    "[Git] Aucun changement trouvé" >> "$LOGDIR"/"$DATETIME".log 2>&1
    exit $?
fi

# Commit sur GitHub
printer "Git" "Préparation du commit..." "$YELLOW"
"[Git] Préparation du commit..." >> "$LOGDIR"/"$DATETIME".log 2>&1
git commit -m "Save $DATETIME" >> "$LOGDIR"/"$DATETIME".log 2>&1

# Push sur GitHub
printer "Git" "Envoi vers GitHub..." "$RED"
"[Git] Envoi vers GitHub..." >> "$LOGDIR"/"$DATETIME".log 2>&1
git push >> "$LOGDIR"/"$DATETIME".log 2>&1

printer "Git" "Sauvegarde terminé !" "$GREEN"
"[Git] Sauvegarde terminé !" >> "$LOGDIR"/"$DATETIME".log 2>&1

printer "Git" "Statut actuel de Git" "$GREEN"
"[Git] Statut actuel de Git" >> "$LOGDIR"/"$DATETIME".log 2>&1
git status
git status >> "$LOGDIR"/"$DATETIME".log 2>&1
