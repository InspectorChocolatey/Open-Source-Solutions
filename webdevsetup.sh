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
#dir="OpenSourceWeb";
#mkdir "$dir" -v;
#cd "$dir";
url="https://github.com/InspectorChocolatey/Xml";
git clone "$url";


url="https://github.com/InspectorChocolatey/Java";
git clone "$url";

url="https://github.com/InspectorChocolatey/php";
git clone "$url";

url="https://github.com/InspectorChocolatey/Angular";
git clone "$url";

#//~~~~~~~~~~~~~~~~modules~~~~~~~~~~~~~~~~~~~~//

dir="php/phpmyadmin/sublime";
cd "$dir";
./sublime.sh

function setacl()
{
	item="$1";
	chmod u+x "$item" -v;
}

#chmod u+x "sublime.sh" -v;
setacl "sublime.sh";
./sublime.sh;
