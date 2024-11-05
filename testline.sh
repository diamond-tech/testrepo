#!/bin/bash

File="/home/batman/test_script/testdata"

#checking the file exixtance

 if [ -f "$File" ]; then

#Deleting last 3 lines	

sed -i '$d; $d; $d' "$File"
echo "Deleted the last three lines from $File"

else
	echo "No such file: $File" 
 fi
