#!/bin/bash

set -ouex pipefail

sysadmin_packages=(
  "easytier"
  "tigervnc-server"
)

packages=(
  ${sysadmin_packages[@]}
)

# Clean stale metadata cache before installing, in case upstream repo repodata has changed
rpm-ostree cleanup -m

# install rpms
rpm-ostree install ${packages[@]}
