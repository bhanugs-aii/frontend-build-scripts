#!/bin/bash

echo -e "++++++++++++++++++++++++\n
        HEADER MANAGEMENT BUILD STARTED \n
     +++++++++++++++++++++++++++++++++++\n"

ng build --single-bundle true --prod --project="header-wc"

echo "ng BUILD COMPLETED"
echo "MOVING BUILD FILES TO web/app"

cp dist/header-wc/styles.*.css ../web/app/header-management/header.css

cat dist/header-wc/*.js > ../web/app/header-management/header.js

cp dist/header-wc/styles.*.css ../web/app/formulationGrid/handson.css

echo "MOVING BUILD FILES TO web/dist"

cp dist/header-wc/styles.*.css ../web/dist/header-management/header.css

cat dist/header-wc/*.js > ../web/dist/header-management/header.js

cp dist/header-wc/styles.*.css ../web/dist/formulationGrid/handson.css

echo "BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
        HEADER MANAGEMENT ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"