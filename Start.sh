#!/bin/bash

cd srs && ./srs -c srs.conf

cd ..

export LD_LIBRARY_PATH=`pwd`/lib:`pwd`/lib/cef
export LD_PRELOAD=`pwd`/lib/cef/libcef.so

export HTTP_SERVER_LISTEN_PORT=10001

./MediaSwitcher
