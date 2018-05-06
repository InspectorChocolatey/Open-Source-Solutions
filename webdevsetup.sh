############################
 #<Open Source Solutions>#
############################

[] sublime
[] codeblocks
[] php stack....

java wamp server installation

[] a JavaBased GUI

[ ] implement the credentialcaching
[ ] xmlbased packagemanager
[ ] git clone command can be ripped thru for the interfaces specified in XML...

[ ] Connect to Microsoft SQLServer;
[ ] Implement PHP;
[ ] Read and Write From XML;

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

root="/$USER/Desktop";
cd "$root";

url="https://github.com/InspectorChocolatey/Open-Source-Solutions";
git clone "$url";

url="https://github.com/InspectorChocolatey/Xml";
git clone "$url";

url="https://github.com/InspectorChocolatey/Java";
git clone "$url";

url="https://github.com/InspectorChocolatey/php";
git clone "$url";

url="https://github.com/InspectorChocolatey/Angular";
git clone "$url";

url="https://github.com/InspectorChocolatey/jQuery";
git clone "$url";

#//~~~~~~~~~~~~~~~~modules~~~~~~~~~~~~~~~~~~~~//

dir="php/phpmyadmin/sublime";
cd "$dir";
# //./sublime.sh

function setacl()
{
	item="$1";
	chmod u+x "$item" -v;
}

setacl "sublime.sh";
./sublime.sh;

#https://unix.stackexchange.com/questions/421985/invalid-signature-when-trying-to-apt-get-update-on-kali
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add

apt-get update;

# install xml lint
apt-get install libxml2-utils
