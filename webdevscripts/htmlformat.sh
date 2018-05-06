# references:
# (Formatting XML and HTML with XMLLINT - Linux - Shell Script - BASH)
# https://www.youtube.com/watch?v=_vjrTCFeFhk

#!/bin/bash

# install xml lint
apt-get install libxml2-utils

curl --silent "http://www.msn.com";

curl --silent "http://www.msn.com" | xmllint --html --format - | more;
