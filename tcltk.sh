#!/usr/bin/env bash

set -e

# Install Location.
export PREFIX=$SNAPCRAFT_PART_INSTALL/usr

# tcltk Version.
VERSION=8.6.13


# COMPILE TCL/TK ####################################################
wget https://downloads.sourceforge.net/project/tcl/Tcl/${VERSION}/tcl${VERSION}-src.tar.gz
tar -xzf tcl${VERSION}-src.tar.gz
cd tcl${VERSION}/unix
./configure --prefix=$PREFIX
make install
cd ../..

wget https://downloads.sourceforge.net/project/tcl/Tcl/${VERSION}/tk${VERSION}-src.tar.gz
tar -xzf tk$VERSION-src.tar.gz
cd tk${VERSION}/unix
# see http://sourceforge.net/p/tktoolkit/bugs/2588/ for --disable-xss
./configure --prefix=$PREFIX --disable-xss
make install
cd ../..
