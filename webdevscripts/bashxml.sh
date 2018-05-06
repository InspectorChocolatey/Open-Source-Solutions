#!/bin/bash
# references:
# https://www.youtube.com/watch?v=7CaPWjm9oXY

function readXml()
{
	xml="$1";
	cat "$xml";	
}

function enpermission()
{
	dir="$1";
	chmod u+x "$dir" -v;	
}

xml="/root/Desktop/bashxml.xml";

readXml "$xml";

# sed "/group/,//\group/" "$xml";
# sed -e "/group/,/\/group/ " "$xml";


sed " " $xml
sed "<name>" $xml
