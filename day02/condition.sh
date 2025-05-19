#!/bin/bash


:<< 'disclaimer'
this is just for infortinment purpose
disclaimer

read -p "enter the marks: " marks

if [[ $marks -ge "90" ]]; then
	echo "grade: A"

elif [[ $marks -ge "75"  ]]; then
	echo "grade: B"

else
	echo "KEEP IMPROVING"
fi
