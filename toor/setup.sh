#!/bin/bash
########################################
 # <toor browser installation package>#
########################################
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
