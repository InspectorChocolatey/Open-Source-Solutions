#!/bin/bash
#
# References:
#
#	https://askubuntu.com/questions/128524/how-to-list-dependent-packages-reverse-dependencies/128527
#
#
#
#

function listdependencies()
{
  packagename="$1";
  apt-cache rdepends "$packagename";
}

apt-cache rdepends packagename
