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

# Log en cas pour stdout et stderr
exec 1>"$LOGDIR"/"$DATETIME".log 2>&1

# Corrige : [warning: LF will be replaced by CRLF]
git config core.autocrlf true

# Permet de trouver une variable dans server.properties
#search "level-name"

# Récupération du GitHub
printer "Git" "Récupération des dernières modifications..." "$YELLOW"
git pull --autostash

# Ajout de tous les nouveaux fichiers sur le git
printer "Git" "Ajout des fichiers non répertorié..." "$YELLOW"
git add .

# Regarde si il y a des changements avec le dernier commit
if [ -n "$(git status --porcelain)" ]; then
    printer "Git" "Changements trouvées !" "$RED"
else
    printer "Git" "Aucun changement trouvé" "$GREEN"
    exit $?
fi

# Commit sur GitHub
printer "Git" "Préparation du commit..." "$YELLOW"
git commit -m "Save $DATETIME"

# Push sur GitHub
printer "Git" "Envoi vers GitHub..." "$RED"
git push

printer "Git" "Sauvegarde terminé !" "$GREEN"

printer "Git" "Statut actuel de Git" "$GREEN"
git status
