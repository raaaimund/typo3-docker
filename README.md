# Typo3 <3 Docker

## build.bat
Run 'build.bat' to remove the volumes and rebuild the images. 
You will end up with a brand new Typo3 installation.

Place a sql dump file called _dump.sql_ inside _site/sql_ to import this dump during installation.

## run.bat
Run 'run.bat' to run all required containers.

## credentials
Typo3 Backend:

* user admin:mystrongpassword (will change if you import a sql dump file)

MySQL Database:

* database hostname: db
* user typo3:mystrongpassword
* user root:mystrongpassword
* database: typo3

## container

### composer
Installs all packages from composer.json.

### php
PHP FPM Alpine. Contains the php.ini.

### web
Nginx server to serve the website.