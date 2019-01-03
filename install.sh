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
	source ~/.profile;
}

function installPython() {
	echo "==> Python <=="

	pyenv install 3.7.1
	pyenv global 3.7.1
	pip3 install -U pip
	pip3 install ipython pipenv
	pyenv rehash
}

function installJS() {
	echo "==> JavaScript <=="

	if [ ! -d $NVM_DIR ]; then
		git clone http://github.com/creationix/nvm.git $NVM_DIR
	fi
}

function run() {
	copyAll
	./macos.sh
	./brew.sh
	
	installPython
	installJS
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
