#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory; then
	echo "this code is exited as directory already exist"
	exit 1
fi

echo "this should not work"

