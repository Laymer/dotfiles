#!/usr/bin/env bash

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
# export PATH="$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/"
# export PATH="$PATH:$HOME/node_modules/.bin"
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Load the shell dotfiles
for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
