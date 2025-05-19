#!/bin/bash

check_even() {
    if [[ $(( $1 % 2 )) -eq 0 ]]; then
        return 0    # success
    else
        return 1    # failure
    fi
}

read -p "enter the number: " num

check_even $num

if [[ $? -eq 0 ]]; then
    echo "Even number"
else
    echo "Odd number"
fi

