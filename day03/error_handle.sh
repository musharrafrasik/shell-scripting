#!/bin/bash

create_dir() {
	mkdir demo
}

if ! create_dir; then
	echo "the code is being exited as the dir already exists."
	exit 1
fi

echo "this shouldn't work bcs the code is interrupted!"
