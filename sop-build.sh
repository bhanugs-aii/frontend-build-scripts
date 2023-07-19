#!/bin/bash
SECONDS=0

echo -e "++++++++++++++++++++++++\n
        SOP MANAGEMENT STARTED \n
     +++++++++++++++++++++++++++++++++++\n"

ng build --single-bundle true --prod --project="sop-management-wc"
echo "SOP BUILD COMPLETED"
echo "MOVING BUILD FILED TO web/app"
cp dist/sop-management-wc/styles.*.css ../web/app/header-management/header.css
cat dist/sop-management-wc/*.js > ../web/app/sopmanagement/sopmanagement.js
echo "MOVING BUILD FILED TO web/dist"
cp dist/sop-management-wc/styles.*.css ../web/dist/header-management/header.css
cat dist/sop-management-wc/*.js > ../web/dist/sopmanagement/sopmanagement.js
echo "SOP BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
        SOP MANAGEMENT ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"