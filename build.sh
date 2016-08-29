#!/bin/bash
mkdir ./public
mkdir ./public/js
rm ./webpack.config.js
cp ../webpack.config.js ./
cp -r ../js ./js.new
rm ./js.new/config.js
mv ./js/config.js ./js.new/
rm -r ./js
mv ./js.new ./js
NODE_ENV=production webpack
mv ./public/js/build.js ./www/js/
rm -r ./public
rm ./www/css/styles.css
cp ../public/css/styles.css ./www/css/styles.css
rm -r ./www/img
cp -r ../public/img ./www/
rm -r ./www/fonts
cp -r ../public/fonts ./www/

