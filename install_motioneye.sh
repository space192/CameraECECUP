#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Lancer le programme en administrateur"
  exit
fi
apt-get install ffmpeg libmariadb3 libpq5 libmicrohttpd12 python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev -y
wget https://github.com/Motion-Project/motion/releases/download/release-4.2.2/pi_buster_motion_4.2.2-1_armhf.deb
dpkg -i pi_buster_motion_4.2.2-1_armhf.deb
pip install motioneye
mkdir -p /etc/motioneye
cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf
mkdir -p /var/lib/motioneye
cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
systemctl daemon-reload
systemctl enable motioneye
systemctl start motioneye
pip install motioneye --upgrade
systemctl restart motioneye
rm pi_buster_motion_4.2.2-1_armhf.deb
