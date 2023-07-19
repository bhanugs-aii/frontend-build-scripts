#!/bin/bash
SECONDS=0
ROOT_DIR="$(pwd)"
echo "ROOT PATH IS: $ROOT_DIR"


echo -e "++++++++++++++++++++++++
        1/6 LIBRARY PROJECT BUILD ----- START
     +++++++++++++++++++++++++++++++++++"

ng build my-libraries;

cd ./dist/my-libraries

echo "CD to $(pwd)";

echo -e "++++++++++++++++++++++++
        2/7 MOVE ----- cd $(pwd)
        3/7 RUN NPM PACK
     +++++++++++++++++++++++++++++++++++"

npm pack;

echo -e "++++++++++++++++++++++++
        4/7 MOVE ----- cd $ROOT_DIR
     +++++++++++++++++++++++++++++++++++"

cd "$ROOT_DIR"

echo -e "++++++++++++++++++++++++
        5/7 COPY BUILD FILES TO ----- cp projects/library-components/mylibrary.tgz
     +++++++++++++++++++++++++++++++++++"

echo "cp build files";
cp dist/my-libraries/*.tgz projects/library-components/mylibrary.tgz

echo -e "++++++++++++++++++++++++
        6/7 NPM INSTALL LIBRARY ----- ALMOST DONE
     +++++++++++++++++++++++++++++++++++"

npm install ./projects/library-components/mylibrary.tgz

echo -e "++++++++++++++++++++++++
        7/7 FINALLY -----  DONE
        see below for time taken
     +++++++++++++++++++++++++++++++++++"

eval "echo $(date -d@$SECONDS -u +%H:%M:%S)"