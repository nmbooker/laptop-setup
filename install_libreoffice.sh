#! /bin/bash

agy="apt-get -y"

$agy install libgl1  cups-bsd libxrender1 imagemagick pstoedit libpaper-utils libreoffice-filter-binfilter
$agy libreoffice libreoffice-l10n-en-gb libreoffice-help-en-gb libreoffice-gtk
$agy install openclipart-libreoffice
$agy install myspell-en-gb mythes hyphen-en-us
