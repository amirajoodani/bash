#!/bin/bash
TMP_FILE=`mktemp -t`
echo "Interface | IP | MAC | Flags"
ifconfig | sed -n '/^[a-z]/p' | gawk '{print $1}' | while read line
do
	ifconfig $line > $TMP_FILE
	IP=`cat $TMP_FILE | sed -n "/inet addr/p" | gawk '{print $2}' | sed "s/addr://"`
	MAC=`cat $TMP_FILE | sed -n "/HWaddr/p" | gawk '{print $NF}'
	FLAGS=`cat $TMP_FILE | sed -n "/MTU/p" | sed "s/^ *//"`
	echo "$line | $IP | $MAC | $FLAGS"
done
rm -f $TMP_FILE
