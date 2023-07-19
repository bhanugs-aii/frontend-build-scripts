#!/bin/bash

echo -e "++++++++++++++++++++++++\n
        PROJECT MANAGEMENT STARTED \n
     +++++++++++++++++++++++++++++++++++\n"

ng build --single-bundle true --prod --project="project-management-wc"
echo "ng BUILD COMPLETED"
echo "MOVING BUILD FILES TO web/app"
cp dist/project-management-wc/styles.*.css ../web/app/header-management/header.css
cat dist/project-management-wc/*.js > ../web/app/project/project_management.js
echo "MOVING BUILD FILES TO web/dist"
cp dist/project-management-wc/styles.*.css ../web/dist/header-management/header.css
cat dist/project-management-wc/*.js > ../web/dist/project/project_management.js
echo "BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
        PROJECT MANAGEMENT ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"