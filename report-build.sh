#!/bin/bash

echo "ng BUILD STARTED..."
ng build --single-bundle true --prod --project="report-document-template-wc"
echo "ng BUILD COMPLETED"
echo "MOVING BUILD FILES TO web/app"
cp dist/report-document-template-wc/styles.*.css ../web/app/header-management/header.css
cat dist/report-document-template-wc/*.js > ../web/app/report-document-template/report_document_template.js

echo "MOVING BUILD FILES TO web/dist"

cp dist/report-document-template-wc/styles.*.css ../web/app/header-management/header.css
cat dist/report-document-template-wc/*.js > ../web/dist/report-document-template/report_document_template.js

echo "BUILD FILES COPIED to WEB"
