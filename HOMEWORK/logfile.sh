#!/bin/bash
#check if a search has been specified
no_of_arguments=$#
if [ $no_of_arguments -lt 1 ]
then
     echo #new line separator
     echo "Search string not specified"
     exit
fi

#to generate the log file 
search_string=$1 #search 
counter=0 # variable
LIMIT=10

while [ "$counter" -lt "$LIMIT" ]
do
datestring=`date +%s` #generate date string
touch "log_$datestr.txt"
uname >> log_$datestring.txt
date >> log_$datestring.txt
grep -m `expr $counter + 1` $search_string words.txt | tail -1 >> log_$datestring.txt
sleep 7 #wait for 7 seconds
count=`expr $counter + 1`
done #while loop

echo
exit 0

