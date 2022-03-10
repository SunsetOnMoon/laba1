#!/bin/bash

string="$1"
dir_name="$2"

if [ $# -ne 2 ]
then
	echo "Unexptected number of parameters ($#)."
else
	if [ ! -d "$dir_name" ]
	then
		echo "$dir_mame isn't a directory"
	else
		find "$dir_name" -type f -exec grep -lq "$string" {} \; -exec stat -c "%s %n" {} \; | sort -n 
	fi
fi

