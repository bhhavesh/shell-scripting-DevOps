#!/bin/bash
 read -p "Enter Username: " username
 echo "You Enter$username "

 sudo useradd -m $username
 echo "User Added"
