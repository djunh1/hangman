
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

$ bundle install

Step 5:

$ rails db:migrate
