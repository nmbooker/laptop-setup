#! /bin/bash

# Works on a very fiddled-with Xubuntu 12.04.  Unsure if all build dependencies are here!

agy="apt-get -y"

$agy install python-pip python-dev
pip install pyephem
add-apt-repository ppa:thebernmeister/ppa
apt-get update
apt-get install indicator-lunar
