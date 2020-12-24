#!/bin/bash

if [[ $UID != 0 ]]; then 
  echo "Please execute script as root user."; 
fi

yum update -y
# ansible not part of inital repo; do it other way ;) 
# 
yum install git python2 -y
pip install ansible -y 