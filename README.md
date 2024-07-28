[![CI](https://github.com/AlexGidarakos/linux-qol-tweaks/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/AlexGidarakos/linux-qol-tweaks/actions/workflows/ci.yml?query=branch%3Amain)

# Linux QoL Tweaks
A collection of quality-of-life tweaks that I like to apply as soon as possible on a fresh Linux installation, be it bare-metal, VM or container.

- [Linux QoL Tweaks](#linux-qol-tweaks)
  - [List of Tweaks](#list-of-tweaks)
  - [Dependencies](#dependencies)
  - [Installation](#installation)
  - [Standards](#standards)
  - [Tested on](#tested-on)

## List of Tweaks
* Bash: alias "ls" to "ls --color=auto"
* Bash: alias "ll" to "ls -al"
* Bash: enhanced prompt for Git [[1](https://code.mendhak.com/simple-bash-prompt-for-developers-ps1-git/)]
* Nano: display the cursor position in the status bar
* Shell: improved Readline history search with up/down arrow keys
* Shell: improved PATH for non-root user

## Dependencies
* Bash
* GNU Coreutils
* GNU Wget

## Installation
```
wget https://raw.githubusercontent.com/AlexGidarakos/linux-qol-tweaks/main/install.sh
chmod u+x install.sh
./install.sh

# Or use the following if you want aliases to take immediate effect:
# . install.sh
```

## Standards
* [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
* [Conventional Commits](https://www.conventionalcommits.org)

## Tested on
* [Debian 12 LXC container](https://images.linuxcontainers.org/images/debian/bookworm/amd64/default/)
* [Debian 12 Docker container](https://gallery.ecr.aws/docker/library/debian)
* [Ubuntu 22.04 Docker container](https://gallery.ecr.aws/docker/library/ubuntu)
