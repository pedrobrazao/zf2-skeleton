#!/bin/bash

# update composer and dependencies
php composer.phar selfupdate
php composer.phar update

# compile css
compass compile

# compress css and javascript files
yui-compressor public/assets/css/styles.css > public/assets/css/styles.min.css
yui-compressor public/assets/js/bootstrap.js > public/assets/js/bootstrap.min.js

