
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

Run
$ bin/shoobx.sh


Step 4: prepare your rvm

Run:
$ bin/ruby.sh

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.3.0
rvm use 2.3.0 --default
gem install bundler


Step 5:

$ rails db:migrate

Step 6: Start the server and navigate the application

$ rails s

http://localhost:3000
