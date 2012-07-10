#! /bin/bash

agy="apt-get -y"
$agy install autofs
if ! grep -q '^/net' /etc/auto.master
 then
    sed -i '/^# *\/net/s/# *//' /etc/auto.master
    etckeeper commit "Enabled NFS browsing in /net in autofs"
fi
initctl restart autofs
