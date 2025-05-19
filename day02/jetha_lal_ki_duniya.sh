#!/bin/bash

# this is 

: <<'COMMENT'
This entire block
is safely ignored
by the shell
COMMENT


name="jetha"

echo "name is $name, and date is $(date)"

echo "enter the name:"

read username

echo "you entered $username"

echo "the chr in $0 $1"
