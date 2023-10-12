#!/bin/bash

git clone https://github.com/rvaiya/warpd.git /tmp/warpd && cd /tmp/warpd
make && sudo make install
warpd
