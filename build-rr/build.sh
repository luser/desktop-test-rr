#!/bin/sh
# This script will build an rr deb from source.

set -v -e -x

ncpu=`grep -c ^processor /proc/cpuinfo`
cd /tmp
git clone https://github.com/mozilla/rr.git
mkdir rr/obj
cd rr/obj
cmake ..
make -j$ncpu
make package
