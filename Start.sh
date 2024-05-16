#!/bin/bash

cd srs && ./srs -c srs.conf

cd ..

export LD_LIBRARY_PATH=./lib

export HTTP_SERVER_LISTEN_PORT=10001

./MediaSwitcher
