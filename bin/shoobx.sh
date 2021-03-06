#!/bin/bash

sudo apt-get install rubygems -y
sudo gem install gemcutter # ruby gem hosting service

sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y
sudo apt-get install sqlite3 -y
sudo apt-get install sqlite3 libsqlite3-dev -y
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

#install Yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y
