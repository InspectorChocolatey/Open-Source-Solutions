#!/bin/bash
# references:
#   http://osxdaily.com/2006/12/11/how-to-customize-your-terminal-prompt/

# rename the host:pwd
hostname "ProximaCentauri";

# edit your .bashrc file:
nano "/$USER/.bashrc";

# add the following to the bottom of your profile:
export PS1="\W @ \h [\u] $ "
