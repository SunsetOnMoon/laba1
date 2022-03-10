#!/bin/bash

dst_file=$1
src_dir=$2
file_exten=$3

if [ $# -ge 3 ]
then
	if [ -d "$src_dir" ]
	then
		find "$src_dir" -name "*.$file_exten" -printf "%f\n" | sort -d > "$dst_file"
	else
		echo "Error 404 :). $src_dir is not a directory">&2
	fi
else
{
	echo "Invalid number of parameters."
	echo "/$1 - file name to output."
	echo "/$2 - directory name to find files."
	echo ".$3 - extension of file to find."
}>&2
fi
