#!/bin/bash
# setup everything on the desktop
function desktop()
{
	dir="/$USER/Desktop";
	cd "$dir";
}

# for storing of credentials
function enablegitcache()
{
	git config --global credential.helper cache;
	echo "                                         ";
	echo "  git credential.helper caching ENABLED  ";
	echo "                                         ";
	echo "       *This feature is disabled         ";
	echo "     automatically after 15 minutes.     ";
	echo "                                         ";
}   

# make sure the credentials are stored before attempting in parallel
function shellclone()
{
	url="$1";
	git clone "$url"
}

# parallelism for downloading git clones 4x at a time
function cloneParallel()
{
  shellclone "https://github.com/InspectorChocolatey/Xml" &
  shellclone "https://github.com/InspectorChocolatey/Crestomathy" &
  shellclone "https://github.com/InspectorChocolatey/Java-MileStones" &
  shellclone "https://github.com/InspectorChocolatey/Java" &
  shellclone "https://github.com/InspectorChocolatey/php" &
  shellclone "https://github.com/InspectorChocolatey/Angular" &
  shellclone "https://github.com/InspectorChocolatey/jQuery" &
}

desktop;
enablegitcache;

shellclone "https://github.com/InspectorChocolatey/Open-Source-Solutions";
cloneParallel;
