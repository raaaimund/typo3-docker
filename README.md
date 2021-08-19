# Typo3 <3 Docker

## clean.bat
Run 'clean.bat' to remove the containers and volumes.

## build.bat
Run 'build.bat' to rebuild the images. 
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
Executs 'composer install'. See [composer.json](./container/composer/composer.json) for more details which dependencies get installed and which scripts get executed. There is also the possibility to import a SQL dump if a file 'sql/dump.sql' exists.

### php
PHP FPM Alpine. Contains the php.ini.

### web
Nginx server to serve the website.