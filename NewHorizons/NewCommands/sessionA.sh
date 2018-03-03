#!/bin/bash

# Get some help:
lsof --help;


# Which files are open?
lsof;


lsof | head;


# Show active internet connections:
netstat -tulpn;


# Equivalent to Net.WebClient.DownloadString("$url");
curl localhost;


# Who or What is currently using something?
# for a directory:
lsof "/opt/sublime_text"; 
# for a program:
lsof "/opt/sublime_text/sublime_text";
