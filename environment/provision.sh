#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g



# my steps
sudo unlink /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default
sudo systemctl restart nginx 



# sudo unlink /etc/nginx/sites-enabled/default
# sudo mv /home/ubuntu/reverse-proxy.conf /etc/nginx/sites-available/reverse-proxy.conf
# sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf




# sudo rm /etc/nginx/sites-available/default
# sudo cp /app/default.conf /etc/nginx/sites-available/default.conf
# # sudo ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default




# npm install and start
#echo 'export DB_HOST=mongodb://192.168.10.200:27017/posts' >> ~/.bashrc
#sudo npm install
