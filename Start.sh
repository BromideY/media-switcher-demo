#!/bin/bash

cd /media-switcher-demo

cd srs && ./srs -c srs.conf

cd ..

if [ -z "$XDG_CURRENT_DESKTOP" ]; then
    Xvfb -ac :3 -screen 0 1920x1080x24 > /dev/null 2>&1 &
    export DISPLAY=:3
fi

export LD_LIBRARY_PATH=`pwd`/lib:`pwd`/lib/cef
export LD_PRELOAD=`pwd`/lib/cef/libcef.so

export HTTP_SERVER_LISTEN_PORT=10001

./MediaSwitcher

sleep infinity
