#! /bin/bash

if ! (which unoconv && which make); then
  echo "Need to install make and unoconv..."
  sudo apt-get -y install make unoconv
fi

echo "Converting desktop guide to PDF..."
make desktop_guide.pdf

echo "Copying desktop guide to desktop..."
cp desktop_guide.pdf ~/Desktop/
