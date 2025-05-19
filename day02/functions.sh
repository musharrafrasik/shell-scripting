#!/bin/bash

add_numbers() {
	sum=$(( $1 + $2 ))
	echo "sum of $1 and $2 is: $sum"
}

read -p "enter the first num: " num1
read -p "enter the second num: " num2

add_numbers $num1 $num2
