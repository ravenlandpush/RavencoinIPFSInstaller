# RavencoinIPFSInstaller
# For Linux distributions
# Ubuntu/Debian/Redhat/CentOS
# Author: push @ ravenland.org
# Site: www.ravenland.org
# Description: An lightweight IPFS + Ravencoin Full Bootstrap Nodes Installer using the Ravenland Daily chain bootstrap
# Notes: no support for recursive ipfs hash pins. Does anyone have a better solution to identify recursive hash?
# then to add with ipfs add -r $recursive_bootstrap_detected_hash;
# Cron support and daily syncing (like RavencoinOS.org coming soon)

# Commits and pull requests welcome!

An automatic Ravencoin IPFS Installer and Pinner for Linux Debian/Ubuntu/Redhat/CentOS operating Systems

Dear Ravencoin Supporter,
Do you want to significantly help the RavencoinOS Interplanetary File System (IPFS) Dynamic Hash Table (DHT) network? 
Now is your chance. Simply run the below commands to install IPFS and get started working with Ravencoin IPFS

#Install IPFS and Sync Ravencoin IPFS hash network
```
wget https://raw.githubusercontent.com/ravenlandpush/RavencoinIPFSInstaller/master/install.sh
chmod +x install.sh
./install.sh
```

# Starting the IPFS Daemon / Server
```
# Start IPFS Daemon
screen -S ravencoinipfs ipfs daemon

# Syncing the daily Ravencoin Chain Pins listed on https://bootstrap.ravenland.org/
# doesnt include recursive directories yet (working on it!)
ravencoin-ipfs-bootstrap-tools/sync_all_not_related_ipfs_hashes.sh
```


