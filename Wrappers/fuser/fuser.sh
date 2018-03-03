#!/bin/bash

fuser --help;

# example:
# whoisusing "/lib/live/mount/medium";
function whoisusing()
{
	namedblockdevice="$1";
	fuser -m "$namedblockdevice";
}



fuser --list-signals
