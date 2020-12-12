#!/bin/sh
# run using: sudo bash getServer.sh

# make the directories and get all the files
# git clone seems to require my username and password
cd ~/api/.

mkdir open
cd ~/api/open/.
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/open/get.py
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/open/get.json
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/open/get.txt
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/open/get.backup.sh

cd ~/api
mkdir close
cd ~/api/close/.
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/close/get.py
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/close/get.json
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/close/get.txt
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/close/get.backup.sh

cd ~/api
mkdir toggle
cd ~/api/toggle/.
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/toggle/get.py
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/toggle/get.json
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/toggle/get.txt
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/toggle/get.backup.sh

cd ~/api
mkdir state
cd ~/api/state/.
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/state/get.py
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/state/get.json
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/state/get.txt
wget https://raw.githubusercontent.com/dumbo25/garage-door/main/home/pi/api/state/get.backup.sh


