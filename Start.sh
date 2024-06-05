#!/bin/bash

ProcessExist(){
    if ps aux | grep -v grep | grep $1 > /dev/null
    then   
        return 1
    else
        return 0
    fi
}

ProcessExist "srs"
if [ $? -eq 0 ]; then
    echo "start srs"
    cd srs && ./srs -c srs.conf
    cd ..
fi

if [ -z "$XDG_CURRENT_DESKTOP" ]; then
    ProcessExist "Xvfb"
    if [ $? -eq 0 ]; then
        echo "start Xvfb"
        Xvfb -ac :3 -screen 0 1920x1080x24 > /dev/null 2>&1 &
    fi
fi

export DISPLAY=:3
export LD_LIBRARY_PATH=`pwd`/lib:`pwd`/lib/cef
export LD_PRELOAD=`pwd`/lib/cef/libcef.so

export HTTP_SERVER_LISTEN_PORT=10001

export CLEANUP_MOD=true

./MediaSwitcher

sleep infinity
