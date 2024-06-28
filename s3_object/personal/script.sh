#!/bin/bash

# Update package index
sudo yum update

# Install Nginx
sudo yum install -y nginx

# Start Nginx
sudo systemctl start nginx

#Install Git
sudo yum install -y git

#Enable https
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload

#change directory into project folder
cd /usr/share/nginx/html

#delete default files
sudo rm -rf *

#clone repository
sudo git clone https://github.com/Uduakobong-Udombat/personal.git .

#restart Nginx
sudo systemctl restart nginx
