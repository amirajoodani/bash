#!/bin/bash
# count number of files in your PATH
mypath=`echo $PATH | sed 's/:/ /g'`
count=0
for directory in $mypath
do
	count=0
	echo "directory = $directory"
	ls $directory | while read line
	do
		count=$[ $count + 1 ]
	done
	echo "$directory - $count"
done
echo "count = $count"