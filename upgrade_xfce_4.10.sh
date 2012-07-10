#! /bin/bash

if ( xfce4-session --version | grep 'Xfce 4\.10' )
then
    echo "No action required.  XfCE is already version 4.10"
    exit 0
fi

echo " XfCE is not version 4.10.  Upgrading..."

if ! [ -f /etc/apt/sources.list.d/xubuntu-dev-xfce-4_10-precise.list ]
then
    echo " Adding XfCE 4.10 repository..."
    add-apt-repository -y ppa:xubuntu-dev/xfce-4.10
fi

echo " Updating repo list..."
apt-get update

echo " Upgrading system..."
apt-get dist-upgrade
