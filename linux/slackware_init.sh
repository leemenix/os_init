#!/bin/bash

if [[] $UID == 0 ]]; then
  echo "Please execute script as root user."; 
fi

# enable slackware mirrorlist
sed -i "/mirrorlist/s/^# //g" /etc/slackpkg/mirrors

slackpkg update

