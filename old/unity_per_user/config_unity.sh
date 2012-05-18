#! /bin/bash

# Tweak the Unity launcher

# This sets a small icon size in the launcher on the left
echo "Setting general settings..."
gconftool-2 --type int --set /apps/compiz-1/plugins/unityshell/screen0/options/icon_size 32

if [ "$(hostname)" == "merlin" ] ; then
        echo "Setting special settings for merlin..."
	# As merlin has no Super key (Windows key), set C-A-Space to show the dash instead.
	gconftool-2 --type string --set /apps/compiz-1/plugins/unityshell/screen0/options/show_launcher "<Control><Alt><Space>"
fi
