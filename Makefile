all: PHONY

copy:
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "macos.sh" \
		--exclude "brew.sh" \
		--exclude "install.sh" \
		--exclude "README.md" \
		--exclude "sublime" \
		-avh --no-perms . ~
	rsync -avh --no-perms sublime/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
	source ~/.profile

python:
	pyenv install 3.7.2
	pyenv install 3.6.8
	pyenv global 3.7.1 3.6.8
	pip install -U pip
	pip install ipython ipdb flake8 flake8-bugbear
	pyenv rehash
	curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
	source $HOME/.poetry/env
	poetry config settings.virtualenvs.in-project true

js:
	if [ ! -d $NVM_DIR ]; then
		git clone http://github.com/creationix/nvm.git $NVM_DIR
	fi

languages:
	make python
	make js

macos:
	./macos.sh

brew:
	./brew.sh

update-sublime:
	cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*.sublime-settings sublime/
	cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*.sublime-snippet sublime/

install:
	make copy
	make macos
	make brew
	make languages
