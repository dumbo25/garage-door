#!/bin/sh
# run using: sudo bash getWebsite.sh

# apache will look at index.html if it exists
# and it is created by defauklt when apache2 is installed
mv /var/www/html/index.html /var/www/html/index2.html

# get the accordion menu
cd /var/www/html
wget "https://raw.githubusercontent.com/dumbo25/garageDoorOpener2/main/index.php"
sudo chmod 774 *.php
sudo chown root *.php

mkdir /var/www/html/css
cd /var/www/html/css
wget "https://raw.githubusercontent.com/dumbo25/garageDoorOpener2/main/style.css"
sudo chown root *.css

sudo mkdir /var/www/html/img
cd /var/www/html/img
wget "https://github.com/dumbo25/garageDoorOpener2/blob/main/remote-background.png"
wget "https://github.com/dumbo25/garageDoorOpener2/blob/main/menu-icon.png"
wget "https://github.com/dumbo25/garageDoorOpener2/blob/main/raspberry-pi.png"

