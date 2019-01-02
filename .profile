#!/usr/bin/env bash

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
#export PATH="$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin"

# Load the shell dotfiles
for file in ~/.{exports,aliases,python_venvs}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;