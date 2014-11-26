ZF2 Skeleton Application
========================

Introduction
------------
This is a simple, alternative skeleton application using the Zend Framework 2 
MVC layer and module systems. This application is meant to be used as a starting 
point for any web based application.

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

(The `self-update` directive is to ensure you have an up-to-date `composer.phar`
available.)

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
