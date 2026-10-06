#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: phone searchfor [... searchfor]"
	exit 1
fi

args=$(echo "$*" | sed 's/ /|/g')

egrep -i "($args)" mydata.txt | awk -F'|' '{
	print "->"
	print "name: " $1
	print "adress: " $2
	print "phone " $3
	print "<-"
}'
