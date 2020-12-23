#!/bin/bash

if [[ $UID != 0 ]]; then 
  echo "Please execute script as root user."; 
fi

apt update -y
apt install git ansible -y