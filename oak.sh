#! /bin/bash

SCDIR="."

pushd "$SCDIR"
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
./upgrade_gimp.sh
./big/install_cheese.sh
./big/install_kde_games.sh
./big/install_empathy.sh
./big/remove_pidgin.sh
popd
