ZF2 Skeleton Application
========================

Introduction
------------
This is a simple, alternative skeleton application using the Zend Framework 2 
MVC layer and module systems. This application is meant to be used as a starting 
point for any web based application.

It also includes Doctrine 2 and Bootstrap 3 SASS version ready to customize.

Installation
------------

Using Composer (recommended)
----------------------------
The recommended way to get a working copy of this project is to clone the repository
and use `composer` to install dependencies:

    cd my/project/dir
    git clone git://github.com/pedrobrazao/zf2-skeleton.git
    cd zf2-skeleton
    php composer.phar self-update
    php composer.phar install

After that you still need to compile style sheets and minify CSS and Javascript.
To achieve this you must run:

    compass compile
    yui-compressor public/assets/css/styles.css > public/assets/css/styles.min.css
    yui-compressor public/assets/js/bootstrap.js > public/assets/js/bootstrap.min.js
    yui-compressor public/assets/js/jquery.js > public/assets/js/jquery.min.js
    yui-compressor public/assets/js/html5shiv.js > public/assets/js/html5shiv.min.js
    yui-compressor public/assets/js/respond.js > public/assets/js/respond.min.js

To make our life easy I put all these commands on a single shell script, so that 
just run:

    ./build.sh

Web Server Setup
----------------

### PHP CLI Server

The simplest way to get started is to start the internal PHP cli-server in the 
root directory:

    php -S 0.0.0.0:8080 -t public/ public/index.php

This will start the cli-server on port 8080, and bind it to all network
interfaces.

**Note: ** The built-in CLI server is *for development only*.

### Apache Setup

To setup apache, setup a virtual host to point to the public/ directory of the
project and you should be ready to go! It should look something like below:

    <VirtualHost *:80>
        ServerName zf2-skeleton.localhost
        DocumentRoot /path/to/zf2-skeleton/public
        SetEnv APPLICATION_ENV "development"
        <Directory /path/to/zf2-skeleton/public>
            DirectoryIndex index.php
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
    </VirtualHost>
