#!/bin/bash

#
## APT Packagelist 
# Ubuntu 24.04 srv minimalist
# 24/11/2024, 13:41

alias apti='apt-get install'
  
# system
apti cpufrequtils
apti lm-sensors
apti net-tools
apti cron

#
apti htop

# tools
apti emacs-nox
apti screen
apti yq
apti strace
#uses ncurses
apti dialog

# metrics
apti nmon
apti bmon
apti nmap
apti netstat

# services
apti qemu-guest-agent
# contains dig
apti bind9-dnsutils 

#CPUpower
apti linux-tools-common
apti linux-headers-6.8.0-49
apti linux-tools-6.8.0-49-generic
