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

readonly GH_URL_PART_1='https://raw.githubusercontent.com/AlexGidarakos'
readonly GH_URL_PART_2='linux-qol-tweaks'

install_bash_aliases() {
  local GH_URL_PART_3='main/files/.bash_aliases'
  local GH_URL="${GH_URL_PART_1}/${GH_URL_PART_2}/${GH_URL_PART_3}"
  local temp_file

  temp_file="/tmp/bash_aliases_${RANDOM}"
  wget -O "${temp_file}" "${GH_URL}"
  cat "${temp_file}" >> ~/.bash_aliases
  rm "${temp_file}"
  source ~/.bash_aliases
}

main() {
  install_bash_aliases
}

main "$@"
