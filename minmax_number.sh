#!/bin/bash
clear
echo "enter your 6 numbers :"
for i in {0..5};do
    read  -p "please enter number $((i+1)) : " number
    number_array[i]="$number"
done

min=${number_array[0]}

for i in {1..5};do
    if [ "${number_array[i]}" -lt  "$min" ];then
        min=${number_array[i]}
    fi
done

max=${number_array[0]}

for i in {1..5};do
    if [ "${number_array[i]}" -gt  "$max" ];then
        max=${number_array[i]}
    fi
done

echo -e "minimun is $min\nmaximum is $max "

