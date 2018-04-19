#!/bin/bash

sudo apt-get install rubygems -y
sudo gem install gemcutter # ruby gem hosting service
sudo gem tumble

sudo apt-get install sqlite3 -y
sudo apt-get install sqlite3 libsqlite3-dev -y
sudo gem install sqlite3-ruby
sudo apt-get install nodejs -y
sudo apt-get upgrade nodejs -y

#install Yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y
