#!/bin/bash
IFS=$'\n'
clear
files=(`find / -name "*.pdf" 2>/dev/null`)
number=${#files[@]}
echo "number of files : " $number
mkdir /home/mypdf 2>/dev/null
j=0
for (( i=0 ; i<$number ; i++ ));do
    ((j++))
    #echo "${files[i]}"
    cp "${files[i]}" "/home/mypdf" 
    echo -e "$j - ${files[i]}- copied !"
done

echo "End!"



