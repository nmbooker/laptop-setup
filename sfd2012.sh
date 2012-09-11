#! /bin/bash

# From a base of Linux Mint 13 Cinnamon Edition.
# This is my script for setting up an environment for people to play with
# on my laptop at the Rugby event on Software Freedom Day 2012.

apt-get update
apt-get dist-upgrade

./install_gvim.sh
apt-get -y install idle
./install_aptitude.sh
./install_edu_games.sh
./install_games.sh
./install_mscorefonts.sh
./install_inkscape.sh
./install_pinta.sh
./big/install_cheese.sh
./devel/install_git.sh
./upgrade_gimp.sh
