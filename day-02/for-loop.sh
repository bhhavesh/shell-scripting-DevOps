#!/bin/bash
#for loop and while loop
<<task
$1 is argument
$2 is a start range 
$3 isend range
task

for (( num=$2; num<=$3; num++ ))
do
	mkdir "$1$num"
done
