
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


Step 4: update the ruby rubygems

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
