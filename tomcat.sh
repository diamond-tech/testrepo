#!/bin/bash
#updating system daemon

sudo yum update systemd

#installing java development kit for running apache-tomcat
echo "Installing Java jdk........>"
echo
sudo yum install java -y

#Downloading latest version of tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.31/bin/apache-tomcat-10.1.31.tar.gz

#Moving file to different location and untar the file
sudo mkdir -p /opt/tomcat
sudo mv apache-tomcat-10.1.31.tar.gz /opt/tomcat
cd /opt/tomcat
sudo tar xvf apache-tomcat-10.1.31.tar.gz

#changing ownership for the file
sudo chown -R $USER:$USER /opt/tomcat/apache-tomcat-10.1.31

#starting tomcat
bash /opt/tomcat/apache-tomcat-10.1.31/bin/startup.sh



