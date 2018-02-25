#!/bin/bash
#
apt-get install tree -y;

# drill down all directories in PWD
tree -dfi "$(pwd)";

# The post installation search for java:
whereis java;
