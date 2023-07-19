#!/bin/bash
SECONDS=0

echo -e "++++++++++++++++++++++++\n
        FORMULATION BUILD MANAGEMENT STARTED \n
     +++++++++++++++++++++++++++++++++++\n"

ng build --single-bundle true --prod --project="formulationgrid-wc"
cp dist/formulationgrid-wc/styles.*.css ../web/app/formulationGrid/handson.css
cat dist/formulationgrid-wc/*.js > ../web/app/formulationGrid/handson.js

echo -e "++++++++++++++++++++++++\n
        FORMULATION BUILD MANAGEMENT DONE \n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"