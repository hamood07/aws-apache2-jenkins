#!/bin/bash
yum update -y
yum install -y httpd git
systemctl start httpd
systemctl enable httpd

# Clone your GitHub repo
git clone https://github.com/hamood07/aws-apache2-jenkins /tmp/app

# Copy index.html to Apache web root
cp /tmp/app/index.html /var/www/html/index.html
