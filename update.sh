#!/bin/bash
npm run build:prod
rm -rf ../datax-web/datax-admin/src/main/resources/static/*
cp -r dist/* ../datax-web/datax-admin/src/main/resources/static
cd ../datax-web
git add datax-admin
git commit -a -m 'update'
git push -u origin feature/sgcc
