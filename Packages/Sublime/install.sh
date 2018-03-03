#!/bin/bash
# https://www.tecmint.com/install-sublime-text-editor-in-linux
# on 64-bit systems:

function download()
{

	url="http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3047_amd64.deb";
	path="/$USER/Desktop";
	cd $path;	
	wget $url;	
	sudo dpkg -i sublime-text_build-3047_amd64.deb;
}

function testdir()
{
	[ -d $1 ] && echo "True" || echo "False";
}

function install()
{
	path="/opt/sublime_text";
	test=$(testdir $path);
	# idempotent test: is sublime already installed? 
	[ $test != "True" ] && installsublime || echo "install found"; 
}

function sublime()
{
	current="$PWD";
	cd "/opt/sublime_text/"
	./sublime_text;
	cd "$current";
}
