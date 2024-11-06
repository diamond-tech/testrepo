#!/bin/bash

#Giving a variable for path to file

log="/home/batman/log_test.csv"

#Cutting out the last coloumn for proving output

echo "running the log check"

sleep 1

cut -d/ -f9 "$log"

echo

echo "DONE"


