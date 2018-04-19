Purpose: This will setup your rails environment on a Ubuntu 16.04 environment.

Notes: Scripts need to be executable.  In the /bin directory, run the following
if nessesary

$ sudo chmod +x *.sh


Step 1 : Create a new directory for the rails application

$ mkdir myapp && cd myapp


Step 2: Configure your git environment, and clone the application.

$ sudo apt-get install curl

$ sudo apt-get install git-core

$ git config --global user.name ${USER_NAME}

$ git config --global user.email ${USER_EMAIL}

$ git clone https://github.com/djunh1/hangman.git

$ cd hangman


Step 3: Run this script to install required dependencies.

$ bin/shoobx.sh


Step 4: Prepare the ruby environment.

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.3.0
rvm use 2.3.0 --default
gem install bundler


Step 5: Migrate the application Database ( from the hangman directory)

$ rails db:migrate

The application will create the nessesary tables to run the application.

Step 6: Start the server and navigate the application.  It is listening on port 3000

$ rails s

http://localhost:3000
