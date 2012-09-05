#! /bin/bash

SCDIR="."

pushd "$SCDIR"
apt-get update
apt-get upgrade
./install_autofs.sh
./install_gvim.sh
./install_aptitude.sh
./install_java_plugin.sh
./install_extra_codecs.sh
./enable_dvd_playback.sh
./install_libreoffice.sh
./install_shotwell.sh
./install_vlc.sh
./install_xsane.sh
./install_games.sh
./install_gwibber.sh
./install_pymazon.sh
./install_mscorefonts.sh
./install_lunar_indicator.sh
./upgrade_gimp.sh
./upgrade_xfce_4.10.sh
./big/install_cheese.sh
./big/install_kde_games.sh
./big/install_empathy.sh
./big/remove_pidgin.sh
./devel/install_git.sh
./devel/rails_db_build_deps.sh
./devel/rvm_deps.sh
./devel/ruby_build_deps.sh
./devel/python_qt4.sh
apt-get dist-upgrade
popd
