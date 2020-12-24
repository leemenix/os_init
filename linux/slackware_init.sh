#!/bin/bash

if [[] $UID == 0 ]]; then
  echo "Please execute script as root user."; 
fi

# enable slackware mirrorlist
 sed -i "/http:\/\/mirrors.slackware.com\/slackware\/slackware64-14.2/s/^# //g" /etc/slackpkg/mirrors

slackpkg update

# get & install sbopkg
wget -q -O - https://github.com/sbopkg/sbopkg/releases/download/0.38.1/sbopkg-0.38.1-noarch-1_wsr.tgz | installpkg