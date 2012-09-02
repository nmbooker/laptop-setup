#! /bin/bash

agy="apt-get -y"


# libav-tools contains ffmpeg command line
# libavcodec-extra-53 contains, among other things, support for Apple AAC files
$agy install libavcodec-extra-53 libav-tools
