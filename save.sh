#!/bin/bash

VERSION=1.0
AUTHOR="Matthieu DEVILLIERS <matthieu@devilliers.fr>"

#colors
YELLOW="\033[1;93m"
RED="\033[1;31m"
GREEN="\033[1;32m"

printer(){
	local display_name=$1
	local msg=$2
	local color_display_name=$3
	local color_msg=$4
	local end_color="\e[0m"

	echo -e "[$color_display_name ${display_name^^} $end_color] : $color_msg $msg $end_color"
}

# Récupération du GitHub
printer "Git" "Git pull --autostash" "$YELLOW" ""
git pull --autostash

sleep 1

# Ajout de tous les nouveaux fichiers sur le git
git add .

# En récupère la date et heure actuel
datetime=`date +%d/%m/%Y-%k:%M`

# Commit sur GitHub
git commit -m "Save $datetime"

# Push sur GitHub
git push