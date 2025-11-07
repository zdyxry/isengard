#!/bin/bash

set -ouex pipefail

sysadmin_packages=(
  "easytier"
  "tigervnc"
)

packages=(
  ${sysadmin_packages[@]}
)

# install rpms
rpm-ostree install ${packages[@]}
