#!/usr/bin/env bash

sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf 
systemctl enable rpm-ostreed-automatic.timer 
systemctl unmask dconf-update.service 
systemctl enable dconf-update.service 
systemctl enable rpm-ostree-countme.service 
rm -f /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo 
rm -f /etc/yum.repos.d/_copr_phracek-PyCharm.repo 
rm -f /etc/yum.repos.d/fedora-updates-testing.repo 
rm -f /etc/yum.repos.d/fedora-updates-testing-modular.repo 
rm -f /etc/yum.repos.d/google-chrome.repo 
rm -f /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo 
rm -f /etc/yum.repos.d/rpmfusion-nonfree-steam.repo 
sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/user.conf 
sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/system.conf 
sed -i '/nameserver/c\nameserver 9.9.9.11' /run/systemd/resolve/resolv.conf
sed -i '/nameserver/c\nameserver 9.9.9.11' /run/systemd/resolve/stub-resolv.conf
systemctl restart systemd-resolved.service
wget https://gitlab.com/hagezi/mirror/-/raw/main/dns-blocklists/hosts/ultimate.txt -O /etc/hosts
