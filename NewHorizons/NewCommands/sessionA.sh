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
