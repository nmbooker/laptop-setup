#! /bin/bash

if ( gimp --version | grep '2\.8' )
then
    echo "No action required.  GIMP is already version 2.8"
    exit 0
fi

echo "GIMP is not version 2.8.  Upgrading..."
echo "  Removing old GIMP..."
apt-get -y autoremove gimp gimp-plugin-registry

if ! [ -f /etc/apt/sources.list.d/otto-kesselgulash-gimp-precise.list ]
then
    echo " Adding GIMP 2.8 repository..."
    add-apt-repository -y ppa:otto-kesselgulasch/gimp
fi

echo " Updating repo list..."
apt-get update

echo " Installing new GIMP..."
apt-get -y install gimp
