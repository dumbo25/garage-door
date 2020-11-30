#!/bin/sh
# run using: sudo bash getScripts2.sh

# get the fauxmo scripts
cd /usr/local/bin
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/usr/local/bin/close.py
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/usr/local/bin/open.py
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/usr/local/bin/toggle.py

# make the sripts executable
sudo chmod +x close.py
sudo chmod +x open.py
sudo chmod +x toggle.py


