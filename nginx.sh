#!/bin/bash

#updating system 

sudo yum update systemd -y

#installing the web server nginx
 
sudo yum install nginx -y
echo

#checking status of the nginx service
echo "status---------->>>>>>>>"
sudo systemctl status nginx.service | grep "Active"

sleep 2

#starting and enabling the service
sudo systemctl start nginx.service
echo "Starting nginx.service....."

#checking the state of nginx service
sleep 1
sudo systemctl status nginx.service | grep "Active"
echo

echo "############################"


