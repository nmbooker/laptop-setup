#! /bin/bash

if ! [ -e "${HOME}/.rvm" ] ; then
	echo "Error: Install rvm first.  You'll also need the ruby build deps if you don't have them." >&2
	exit 1
fi

function diefail() {
	echo "Command failed to execute.  Exiting now." >&2
	exit 2
}

. "${HOME}/.rvm/scripts/rvm"
rvm use 1.9.2 || rvm install 1.9.2 || diefail
rvm use --default 1.9.2 || diefail

rvm use 1.9.2@rails_3.2 || rvm gemset create 1.9.2@rails_3.2 || diefail
rvm use 1.9.2@rails_3.2 || diefail
gem install rails --version "~> 3.2" --no-ri --no-rdoc || diefail
