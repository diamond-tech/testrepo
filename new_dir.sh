#!/bin/bash

Dir="/tmp/logfiles/imp.logs"

if [ -d $Dir ]; then
	echo "the directory exits"
	else 
		echo "No such directory"
		sleep 1
		echo "Creating new directory named imp.logs"
		sudo mkdir -p "$Dir"

#checking again if directory is created or not
sleep 1
 
if [ -d $Dir ]; then
	echo "Directory is created sucessfully"
else 
	echo "ERROR:Couldn't create a Directory"

fi 
fi
		
