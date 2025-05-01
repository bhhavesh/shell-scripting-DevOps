#!/bin/bash

<<disclaimer
this if conditional in shell script
disclaimer
#this is function defining

function checkcase(){
read -p "Test case: " testvalue
read -p "Count Value: " count
if [[ $testvalue == "1" ]];
then
	echo "pass"
elif [[ $count -ge 100 ]];
then
	echo "pass"
else
	echo "fail"
fi
}
#this is function calling
checkcase
