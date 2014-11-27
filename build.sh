#!/bin/bash

# update composer and dependencies
php composer.phar selfupdate
php composer.phar update

# compile css
compass compile

# compress css and javascript files
yui-compressor public/assets/css/styles.css > public/assets/css/styles.min.css
yui-compressor public/assets/js/bootstrap.js > public/assets/js/bootstrap.min.js
yui-compressor public/assets/js/jquery.js > public/assets/js/jquery.min.js
yui-compressor public/assets/js/html5shiv.js > public/assets/js/html5shiv.min.js
yui-compressor public/assets/js/respond.js > public/assets/js/respond.min.js

