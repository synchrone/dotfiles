#!/bin/bash
MYNAME=syn

#pwdless sudo
echo "$MYNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/me

#aiai, owncloud client http release.key
wget -qO - http://download.opensuse.org/repositories/isv:ownCloud:desktop/xUbuntu_15.10/Release.key | apt-key add -
echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_15.10/ /' > /etc/apt/sources.list.d/owncloud-client.list

#java
sudo add-apt-repository --yes ppa:webupd8team/java

#keepasshttp
sudo apt-add-repository --yes ppa:dlech/keepass2-plugins

apt-get update
apt-get install git git-gui vim guake traceroute chromium-browser redshift-gtk network-manager-openvpn-gnome owncloud-client oracle-java8-installer keepass2 autojump clipit

#keepasshttp and dependencies
sudo apt-get install keepass2-plugin-keepasshttp libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil

#ocshot dependencies
sudo apt-get install scrot curl libxml2-utils xclip

mkdir -p /opt/jetbrains
chown -R $MYNAME:$MYNAME /opt/jetbrains



#touchscreen thinks all pan is one huge touch screen
#xsetwacom set "ELAN Touchscreen" MapToOutput eDP1
xinput map-to-output "ELAN Touchscreen" "eDP1"

