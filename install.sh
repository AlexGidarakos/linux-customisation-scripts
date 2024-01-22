#!/bin/bash
#
# Apply QoL tweaks on a fresh Linux installation.
#
# Project URL:
#   - https://github.com/AlexGidarakos/linux-qol-tweaks
# Authors:
#   - Alexandros Gidarakos <algida79@gmail.com>
#     http://linkedin.com/in/alexandrosgidarakos
# Dependencies:
#   - Bash
#   - GNU coreutils
#   - GNU Wget
# Standards:
#   - Google Shell Style Guide
#     https://google.github.io/styleguide/shellguide.html
#   - Conventional Commits
#     https://www.conventionalcommits.org
# Tested on:
#   - Debian 12 LXC container
#   - Debian 12 Docker container
#   - Ubuntu 22.04 Docker container
# Copyright 2024, Alexandros Gidarakos.
# SPDX-License-Identifier: MIT

readonly GH_1='https://raw.githubusercontent.com'
readonly GH_2='AlexGidarakos'
readonly GH_3='linux-qol-tweaks'
readonly GH_4='main'

install_bash_aliases() {
  local GH_5='files/.bash_aliases'
  local GH_URL="${GH_1}/${GH_2}/${GH_3}/${GH_4}/${GH_5}"
  local target
  local downloaded
  target=~/.bash_aliases

  if [[ -f "${GH_5}" ]]; then
    cp "${GH_5}" "${target}"
  else
    downloaded="/tmp/${RANDOM}"
    wget -O "${downloaded}" "${GH_URL}"
    mv "${downloaded}" "${target}"
  fi
    
  source "${target}"
}

main() {
  install_bash_aliases
}

main "$@"
