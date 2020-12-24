#!/bin/bash

if [[ $UID != 0 ]]; then 
  echo "Please execute script as root user."; 
fi

yum update -y
yum install git ansible -y