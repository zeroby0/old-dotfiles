#!/usr/bin/env bash
# Aravind Reddy V. aravindvoggu.in

function doIt() {
	cp .bash_profile ~/.bash_profile
	cp .functions ~/.functions
	cp .exports ~/.exports
	cp .aliases ~/.aliases
	cp .bash_prompt ~/.bash_prompt
	cp .gitignore ~/.gitignore
	cp .gitconfig ~/.gitconfig
	cp subl ~/.myscripts/subl
	cp bootstrap.sh ~/.myscripts/bootstrap.sh
	printf "finished copying files. Sourcing.."
	source ~/.bash_profile;
	printf "done."
	printf "You'll need GPG to sign commits if using .gitconfig provided with this"
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;