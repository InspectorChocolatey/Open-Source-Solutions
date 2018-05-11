#!/bin/bash
    
apt-get update -y;
apt-get install libdvd-pkg -y;
dpkg-reconfigure libdvd-pkg;
