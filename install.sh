#!/bin/bash
# this is the install script
cp proxmoxwol-listener.py /usr/bin/
chmod 744 /usr/bin/proxmoxwol-listener.py
chown root:root /usr/bin/proxmoxwol-listener.py
cp proxmoxwol-vm.service /etc/systemd/system/
chmod 644 /etc/systemd/system/proxmoxwol-vm.service
chown root:root /etc/systemd/system/proxmoxwol-vm.service
systemctl daemon-reload
