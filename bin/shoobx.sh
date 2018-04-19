#!/bin/bash

sudo apt-get install rubygems
sudo gem install gemcutter # ruby gem hosting service
sudo gem tumble

sudo apt-get install sqlite3
sudo apt-get install sqlite3 libsqlite3-dev
sudo gem install sqlite3-ruby
sudo apt-get install nodejs
sudo apt-get upgrade nodejs
#install Yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
yarn install

#RVM

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.3.0
rvm --default use 2.3.0
sudo apt install ruby-bundler
sudo apt install ruby-railties
gem install nio4r -v '2.3.0'
gem install bycrypt -v '3.1.11'
gem install bindex -v '0.5.0'
gem install byebug -v '10.0.2'
gem install ffi -v '1.9.23'
gem install puma -v '3.11.4'
gem install sqlite3 -v '1.3.13'
bundle update sqlite3
gem install nokogiri -v '1.8.2'
bundle update nokogiri
gem install websocket-driver -v '0.6.5'
gem install rails
