#!/bin/bash
# Tandavala's Development Machine Setup on Linux Mint
# Author : José Tandavala

sudo apt-get update

# Installing build essentials
sudo apt-get install -y build-essential lbssl-dev

# Installing and configuring NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# install node js
nvm install node 10.10.0
nvm use 10.10.0
node -v
npm -v

# Install nodemon
npm install -g nodemon

# Install react js cli

npm install create-react-app -g
create-react-app -v

# Grunt - an automated task runner
npm install -g grunt-cli

# Bower - a dependency manager
npm install -g bower

# Gulp - an automated task runner
npm install -g gulp-cli

# Installing firebase cli
npm install -g firebase-tools

# Installing mongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod status

# install postgresql
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/postgresql.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-10

# Install maria DB

sudo apt update
sudo apt install mariadb-server
mysql -V

# Git - a version control system
sudo apt-get update
sudo apt-get install -y git xclip

# Vim, Curl, Python - Some random useful stuff
sudo apt-get install -y vim curl python-software-properties
sudo apt-get install -y python-dev, python-pip
sudo apt-get install -y libkrb5-dev

# Installing JDK and JRE
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk

# Gimp Image Editor
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# Archive Extractors
sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar

# FileZilla - a FTP client
sudo apt-get install -y filezilla

# Sticky Notes
sudo apt-get install -y xpad

# KVM acceleration and cpu checker
sudo apt-get install -y cpu-checker
sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install -y virt-manager
sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# Calibre - Ebook reader and converter
sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
