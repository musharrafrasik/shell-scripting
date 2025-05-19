#!/bin/bash

#print even numbers up to 10

:<<'way1'
num=0

while [[  $num -le 10 ]]
do
	echo $num
	num=$((num+2))
done
way1


#:<<'way2'
num=0

while [[ $num -le 10 ]]      #[[ ... ]] because it's Bash and this allows clean numerical comparison with -le.
do
	if [[ $((num%2)) -eq 0 ]]; then   #((....))for clarity and flexibility
		echo $num
	fi
	num=$((num + 1))
done
