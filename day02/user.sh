#!/bin/bash

read -p "enter the username: " username

echo "you entered $username"

sudo useradd -m $username

echo "new user created"
