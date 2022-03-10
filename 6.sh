#!/bin/bash

src_file=$1
executable=$2

if [ $# -ne 2 ]
then
	echo "Unexpected number of parameters ($#)"
else
#exec 2>1
	gcc $src_file -o $executable 2>&1 && ./$executable
fi 
