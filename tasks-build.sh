#!/bin/bash
SECONDS=0

echo -e "++++++++++++++++++++++++\n
        TASK MANAGEMENT BUILD STARTED \n
     +++++++++++++++++++++++++++++++++++\n"
ng build --single-bundle true --prod --project="tasks-management-wc"
echo "BUILD COMPLETED"

echo "MOVING BUILD FILES TO web/app"
cp dist/tasks-management-wc/styles.*.css ../web/app/header-management/header.css;
cat dist/tasks-management-wc/*.js > ../web/app/tasks-management/tasks_management.js;

echo "MOVING BUILD FILES TO web/dist"
cp dist/tasks-management-wc/styles.*.css ../web/dist/header-management/header.css;
cat dist/tasks-management-wc/*.js > ../web/dist/tasks-management/tasks_management.js
echo "BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
        TASKS MANAGEMENT ----- COMPLETED BUILD\n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"