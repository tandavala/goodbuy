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


