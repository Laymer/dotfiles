#!/usr/bin/env bash
# Copy everything to $HOME

function copyAll() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "macos.sh" \
		--exclude "brew.sh" \
		--exclude "install.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
}

function installPython() {
	source .python_venvs
	mkdir "$WORKON_HOME"
	pip3 install ipython
}

function installJS() {
	git clone http://github.com/creationix/nvm.git ~/.nvm
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
