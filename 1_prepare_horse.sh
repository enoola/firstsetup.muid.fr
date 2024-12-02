#!/usr/bin/bash
#
# I is here
# I will prepare this horse

#GIT_REPOS="quilibrium-toolset MyNuxConfigs"
PREFIX_GIT_REPOS="git@github.com:enoola"
PACKAGES_LIST=$(wget firstsetup.muid.fr/packages_to_install.list && cat "packages_to_install.list" | grep -v '#')
# I will do has much as possible
#
# 1. apt install git
# 2. clone repo I am intersted by
# 3. install all packaged I usually need

# Configuration
LOG_FILE="/var/log/$0.log"
WORKING_DIR="/root/Workspace"
#QUIL_NODE_PATH="$HOME/ceremonyclient/node"
NODE_BINARY=$(cd /root/ceremonyclient/node && ls node-*-linux-amd64)
PARENT_PID=$$

# Logging function
log() {
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] $1" | tee -a "$LOG_FILE"
}

# Error handling
handle_error() {
    log "ERROR: $1"
    exit 1
}

# kill process
kill_process() {
    pkill -SIGINT -P $$
    wait
    echo "SigINT Caught"
    exit 0
}

trap kill_process SIGINT

cd $HOME
# Create log file if it doesn't exist
if [ ! -d "$WORKING_DIR" ]; then
    sudo mkdir -p "$(dirname $LOG_FILE)"
    log "I created folder : $WORKING_DIR"
fi


if [ -f "$LOG_FILE" ]; then
    sudo mv $LOG_FILE "${LOG_FILE}.bak"
    sudo touch "$LOG_FILE"
    log "I move previous logfile to '${LOG_FILE}.bak'"
fi
if [ ! -f "$LOG_FILE" ]; then
    sudo touch "$LOG_FILE"
    sudo chown $(whoami): "$LOG_FILE"
    log "I created logfile : $LOG_FILE"
if 

echo "I will install git"
#1. Install required Packages
apt install -y git

echo "I will clone git repos"
git clone "${PREFIX_GIT_REPOS}/firstsetup.muid.fr"
git clone "${PREFIX_GIT_REPOS}/quilibrium-toolset"
git clone "${PREFIX_GIT_REPOS}/MyNuxConfigs"

package_list_in_one_line=""
#will install packages
for onepackage in $PACKAGES_LIST; do
  package_list_in_one_line="$onepackage $package_list_in_one_line" 
done
echo $packages_to_install


echo "By now. Take Care"

