#!/usr/bin/env bash

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin/"
export PATH="$PATH:$HOME/.poetry/bin"

# Load the shell dotfiles
for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

