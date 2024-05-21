#!/bin/bash

apt udpate
apt install -y libnss3 \
		 libatk1.0-0 \
		 libatk-bridge2.0-0 \
		 libcups2 \
		 libdrm2 \
		 libxcomposite1 \
		 libxdamage1 \
		 libxfixes3 \
		 libxrandr2 \
		 libgbm1 \
		 libxkbcommon0 \
		 libpango-1.0-0 \
		 libcairo2 \
		 libasound2

mkdir lib/cef
tar xzvf lib/cef.tar.gz -C lib/cef

