#!/bin/bash

#
## APT Packagelist 
# Ubuntu 24.04 srv minimalist
# 24/11/2024, 13:41

# system
apt install -y cpufrequtils
apt install -y lm-sensors
apt install -y net-tools
apt install -y cro n

#
apt install -y htop

# tools
apt install -y emacs-nox
apt install -y screen
apt install -y yq
apt install -y strace
#uses ncurses
apt install -y dialog

# metrics
apt install -y nmon
apt install -y bmon
apt install -y nmap
apt install -y netstat

# services
apt install -y qemu-guest-agent
# contains dig
apt install -y bind9-dnsutils 

#CPUpower
apt install -y linux-tools-common
apt install -y linux-headers-6.8.0-49
apt install -y linux-tools-6.8.0-49-generic

# editors
apt install -y nano
apt install -y emacs-nox
