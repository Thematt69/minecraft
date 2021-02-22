#!/bin/bash

VERSION=1.0
AUTHOR="Matthieu DEVILLIERS <matthieu@devilliers.fr>"

#colors
YELLOW="\033[1;93m"
RED="\033[1;31m"
GREEN="\033[1;32m"

echo -e "[$YELLOW ${"Git"^^} "\e[0m"] : "" "Git pull --autostash" "\e[0m""

# Récupération du GitHub
git pull --autostash

# Ajout de tous les nouveaux fichiers sur le git
git add .

# En récupère la date et heure actuel
datetime=`date +%d/%m/%Y-%k:%M`

# Commit sur GitHub
git commit -m "Save $datetime"

# Push sur GitHub
git push