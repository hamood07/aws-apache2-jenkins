#!/bin/bash
sudo apt update -y
sudo apt install -y apache2 git
sudo systemctl start apache2
sudo systemctl enable apache2

sudo rm -rf /tmp/app
# Clone your GitHub repo
sudo git clone https://github.com/hamood07/aws-apache2-jenkins /tmp/app

# Copy index.html to Apache web root
sudo cp /tmp/app/index.html /var/www/html/index.html
