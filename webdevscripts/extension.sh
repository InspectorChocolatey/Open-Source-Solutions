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
