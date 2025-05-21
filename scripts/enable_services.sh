#!/bin/bash

set -ouex pipefail

systemctl enable docker.socket

systemctl enable sshd.socket

systemctl disable systemd-resolved.service