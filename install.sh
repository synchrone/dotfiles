#!/bin/bash

#pwdless sudo
echo "$(whoami) ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/me

add-apt-repository --yes ppa:nextcloud-devs/client

apt-get install curl git git-gui vim guake jq chrome-gnome-shell traceroute network-manager-openvpn-gnome nextcloud-client openjdk-11-jre clipit xclip synaptic

KEEWEB_URL=$(curl -s https://api.github.com/repos/keeweb/keeweb/releases/latest | jq -r '.assets[] | select(.name | contains("linux.x64.deb")) | .browser_download_url')
curl -Ls -o keeweb.deb "$KEEWEB_URL"
dpkg -i keeweb.deb

#ocshot dependencies
apt-get install scrot libxml2-utils

#I keep my IDEs there
mkdir -p /opt/jetbrains
chown -R $(whoami):$(whoami) /opt/jetbrains

