#!/bin/bash

# sudo ln -s /etc/sv/dbus,NetworkManager,udevd,adb,acpid,tlp,chronyd,bluetoothd /var/service/
sudo ln -s /etc/sv/NetworkManager /var/service/
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/udevd /var/service/
sudo ln -s /etc/sv/adb /var/service/
sudo ln -s /etc/sv/acpid /var/service/
sudo ln -s /etc/sv/tlp /var/service/
sudo ln -s /etc/sv/chronyd /var/service/
sudo ln -s /etc/sv/bluetoothd /var/service/
