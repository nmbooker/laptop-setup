#! /bin/bash

agy="apt-get -y"

echo Core Qt development tools
$agy install qt4-designer qt4-dev-tools

echo pyqt4 stuff
$agy install python-qt4 pyqt4-dev-tools

echo pyside core and GUI stuff
$agy install pyside-tools python-pyside.{qtcore,qtgui,qtuitools}

echo
echo More pyside modules are available:
aptitude search ^python-pyside | grep -v :i
