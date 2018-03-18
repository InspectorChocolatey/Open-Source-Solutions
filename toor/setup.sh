#!/bin/bash
########################################
 # <toor browser installation package>#
########################################
#
# references:
# https://www.youtube.com/watch?v=o9lyGUyJr7A
#
# apt-get update error: invalid signature:
#https://unix.stackexchange.com/questions/421985/invalid-signature-when-trying-to-apt-get-update-on-kali
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add

apt-get update -y;

url="https://www.torproject.org/download/download.html";
firefox "$url";

#Download the file:

cd "/$USER/Downloads";
file="tor-browser-linux64-7.5.2_en-US.tar.xz";
tar -xf "$file";

# make it so that you can run toor browser as root (as seen in the video:)
cd "/root/Downloads/tor-browser_en-US"
./start-tor-browser.desktop
