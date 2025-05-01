#!/bin/bash


#!/bin/bash

num=0

while [ $num -le 10 ]
do
    if [ $(( num % 2 )) -eq 0 ]; then
        echo "Even number: $num"
    fi
    ((num++))
done

