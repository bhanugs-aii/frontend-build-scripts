#!/bin/bash
SECONDS=0

echo -e "++++++++++++++++++++++++\n
        SETTINGS MANAGEMENT STARTED \n
     +++++++++++++++++++++++++++++++++++\n"

ng build --single-bundle true --prod --project="settings-wc"
echo "SETTINGS BUILD COMPLETED"
echo "MOVING BUILD FILED TO web/app"
cp dist/settings-wc/styles.*.css ../web/app/header-management/header.css
cat dist/settings-wc/*.js > ../web/app/settings/settings.js
echo "MOVING BUILD FILED TO web/dist"
cp dist/settings-wc/styles.*.css ../web/dist/header-management/header.css
cat dist/settings-wc/*.js > ../web/dist/settings/settings.js
echo "SETTINGS BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
        SETTINGS MANAGEMENT ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"