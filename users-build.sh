#!/bin/bash
SECONDS=0

echo -e "++++++++++++++++++++++++\n
        USER MANAGEMENT STARTED \n
     +++++++++++++++++++++++++++++++++++\n"
ng build --single-bundle true --prod --project="users-wc"
echo "ng BUILD COMPLETED"
echo "MOVING BUILD FILES TO web/app"
cp dist/users-wc/styles.*.css ../web/app/header-management/header.css
cat dist/users-wc/*.js > ../web/app/users/users.js
echo "MOVING BUILD FILES TO web/dist"
cp dist/users-wc/styles.*.css ../web/dist/header-management/header.css
cat dist/users-wc/*.js > ../web/dist/users/users.js
echo "BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
        USERS MANAGEMENT ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"