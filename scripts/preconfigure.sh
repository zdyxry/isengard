#!/bin/bash

set -ouex pipefail

# Disable auto suspend
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Apply IP Forwarding before installing Docker to prevent messing with LXC networking
sysctl -p

# Disable SELinux
sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
