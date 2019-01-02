#!/usr/bin/env bash
# Copy everything to $HOME

function copyAll() {
	echo "==> Copy All <=="
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "macos.sh" \
		--exclude "brew.sh" \
		--exclude "install.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
}

function installPython() {
	echo "==> Python <=="
	
	pip3 install ipython
}

function installJS() {
	echo "==> JavaScript <=="

	if [ ! -d "$HOME/.nvm" ]; then
		git clone http://github.com/creationix/nvm.git ~/.nvm
	fi
}

function run() {
	copyAll
	./macos.sh
	./brew.sh
	
	installPython
	installJS
	
	source ~/.profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	run;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		run;
	fi;
fi;
unset run;
