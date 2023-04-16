# Proxmox WOL server

This is a service written in python to wake VMs using WOL. It runs in systemd. It is known to work on proxmox. It runs as root. If you can think of a better way to do this, please issue a PR. There was a reference to this concept on the proxmox forums, but the actual script was locked behind a regisration wall, so I decided to write it myself in python.

I hope you find this useful.

### Why?

Proxmox virtual nics don't seem to respond to WOL packets. This service looks out for them and wakes your sleeping vms.

### How?

```
# git clone https://github.com/NigiNagiNu/proxmoxwol
# cd proxmoxwol
# ./install.sh
# systemctl enable proxmoxwol-vm.service
# systemctl start proxmoxwol-vm.service
```

### What next?

Can improve this quite a bit. Just a quick script written to solve a small problem.

### Changes for Proxmox VE 7.4
* Removed sudo from install.sh
* Modified proxmoxwol-listener.py to support ECHO packets
