#!/usr/bin/env bash
# Aravind Reddy V. aravindvoggu.in

function doIt() {
	mv -f .bash_profile ~/.bash_profile
	mv -f .functions ~/.functions
	mv -f .exports ~/.exports
	mv -f .aliases ~/.aliases
	mv -f .bash_prompt ~/.bash_prompt
	mv -f .gitignore ~/.gitignore
	mv -f .gitconfig ~/.gitconfig
	printf "finished copying files. Sourcing.."
	source ~/.bash_profile;
	printf "done."
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