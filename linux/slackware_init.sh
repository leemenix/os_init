#!/bin/bash

if [[] $UID == 0 ]]; then
  echo "Please execute script as root user."; 
fi

# enable slackware mirrorlist
 sed -i "/http:\/\/mirrors.slackware.com\/slackware\/slackware64-14.2/s/^# //g" /etc/slackpkg/mirrors

slackpkg update

