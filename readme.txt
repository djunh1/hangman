
Step 1 : Create a new directory for the rails application


Step 2: Run the following:

sudo apt-get install curl

sudo apt-get install git-core

git config --global user.name ${USER_NAME}

git config --global user.email ${USER_EMAIL}

git clone https://github.com/djunh1/hangman.git

cd hangman

(This will clone the application to your local machine)


Step 3:

Run $ bin/shoobx.sh


Step 4: prepare your rvm

yarn install

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.3.0
rvm --default use 2.3.0
sudo apt install ruby-bundler -y
sudo apt install ruby-railties -y


Step 5: update the ruby rubygems

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
bundle install

Step 5:

$ rails db:migrate
