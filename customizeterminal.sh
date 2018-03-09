#!/bin/bash

# Rename the host:pwd
hostname "ProximaCentauri";

# edit your .bashrc file:
nano "/$USER/.bashrc";

# add the following to the bottom of 
# your profile:
export PS1="\W @ \h [\u] $ "
