#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Lancer en tant qu'administrateur"
  exit
fi
systemctl stop motioneye
rm -rf /var/lib/motioneye
rm -rf /etc/motioneye
pip uninstall motioneye -y
apt-get remove python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev ffmpeg libmariadb3 libpq5 libmicrohttpd12 -y
