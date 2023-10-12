#!/bin/bash

sudo cp -r ../rootfiles/etc/udev/hwdb.d /etc/udev/
sudo udevadm hwdb --update && sudo udevadm control --reload-rules && sudo udevadm trigger
