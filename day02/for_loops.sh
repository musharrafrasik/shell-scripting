#!/bin/bash

# this is for and while loops

: <<'TASK'
$1 is argument_1 which is folder name
$2 is start range
$3 is ending range
TASK


for (( i=$2; i<=$3; i++ ));
do
	mkdir "$1$i"
done
