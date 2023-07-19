#!/bin/bash
SECONDS=0

echo -e "++++++++++++++++++++++++\n
        INVENTORY MANAGEMENT STARTED \n
     +++++++++++++++++++++++++++++++++++\n"

ng build --single-bundle true --prod --project="inventory-management-wc"
echo "ng BUILD COMPLETED"
echo "MOVING BUILD FILES TO web/app"
cp dist/inventory-management-wc/styles.*.css ../web/app/header-management/header.css
cat dist/inventory-management-wc/*.js > ../web/app/inventory-management/inventory_management.js
echo "MOVING BUILD FILES TO web/dist"
cp dist/inventory-management-wc/styles.*.css ../web/dist/header-management/header.css
cat dist/inventory-management-wc/*.js > ../web/dist/inventory-management/inventory_management.js
echo "BUILD FILES COPIED to WEB"

echo -e "++++++++++++++++++++++++\n
         INVENTORY MANAGEMENT ----- COMPLETED BUILD \n
     +++++++++++++++++++++++++++++++++++\n"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"