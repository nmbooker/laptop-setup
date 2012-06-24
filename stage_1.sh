#! /bin/bash

agy="apt-get -y"

$agy install bzr etckeeper
etckeeper init

$agy install vim vim-gtk
$agy install autofs
if ! grep -q '^/net' /etc/auto.master
 then
    sed -i '/^# *\/net/s/# *//' /etc/auto.master
    etckeeper commit "Enabled NFS browsing in /net in autofs"
fi
initctl restart autofs

$agy install git git-gui

