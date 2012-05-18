#! /bin/bash

agy="apt-get -y"

echo "Installing rhythmbox..."
$agy install rhythmbox

echo ""
echo "Installing pymazon, for downloading from Amazon's MP3 store..."
$agy install python-pip
pip install pymazon
