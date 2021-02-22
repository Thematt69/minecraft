#!/bin/bash

#dateTime actuelle
datetime=`date +%d/%m/%Y-%k:%M`

#ajout de tous les nouveaux fichiers sur le git
git add .

#commit sur GitHub
git commit -m "Save $datetime"

#push sur GitHub
git push