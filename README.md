# RavencoinIPFSInstaller
An automatic Ravencoin IPFS Installer and Pinner for Linux Debian/Ubuntu/Redhat/CentOS operating Systems

# What is RavencoinIPFSInstaller?
RavencoinIPFSInstaller is an automatic installer for Ravencoin + IPFS for people that want to support the Ravencoin cryptocurrency Network's interplanetary filesystem. Ravencoin is dependent upon a protocol called IPFS which allows using DHT torrent technology to distribute files. When someone creates an ravencoin asset, they can attach an IPFS hash, which is a unique signature for a file. This system allows anyone to join the public DHT network and mirror a copy of all the Ravencoin objects. (as is done with https://ravencoinos.org). Except that this version will automatically install IPFS + sync the ravencoin blockchain ipfs objects from the https://bootstrap.ravenland.org/ service on any Linux virtual Machine or Dedicated Linux Server aswell. 


# Install + Setup
Make sure you perform the below steps as the 'ubuntu' or 'centos' user, or a user which has sudo permissions by default. 
```
wget https://raw.githubusercontent.com/ravenlandpush/RavencoinIPFSInstaller/master/install.sh
chmod +x install.sh
./install.sh
```

# Starting the IPFS Daemon / Server
Make sure you perform these below steps as a non root user. Running these scripts as the root user, as with any software is ill advised.
```
#permissions may be required
chmod +x startipfs.sh
# Start IPFS Daemon
./startipfs.sh

# Syncing the daily Ravencoin Chain Pins listed on https://bootstrap.ravenland.org/
# doesnt include recursive directories yet (working on it!)
ravencoin-ipfs-bootstrap-tools/sync_all_not_related_ipfs_hashes.sh
```

#  If you run IPFS server and just want to pin all Ravencoin IPFS hashes

For those that perhaps already have an IPFS node running and want to help support the Ravencoin Network abd community, or merely just have a strong desire to obtain a network peer copy of all the IPFS hashes added to Ravencoin blockchain onto their hard disk, Look no further! The below steps show someone who has an existing IPFS server how to pin all of the Objects on the Ravencoin blockchain using Ravenland's existing ravencoin-ipfs-bootstrap-tools (https://github.com/ravenlandpush/ravencoin-ipfs-bootstrap-tools). The steps are given below.


```
git clone https://github.com/ravenlandpush/ravencoin-ipfs-bootstrap-tools
cd ravencoin-ipfs-bootstrap.tools
chmod +x sync_all_not_related_ipfs_hashes.sh
./sync_all_not_related_ipfs_hashes.sh
```

# Adding to Crontab - unfinished/incomplete - Run IPFS bootstrap pin 1AM nightly.
The below crontab 'script' works. However, you need to replace the sections $whoami with the username you want it to run under. Also the working path is assumed of the cronjob. That is why it is not present in the current automation.

```
# Add a cronjob command for the installed tools
# this script does rightly assume user has ran a cd ~ and/or is in their /home/user directory.

# add the ravencoin-boot-strap to cron to run at 1AM every day and sync ravencoin blockchain objects occurring on IPFS
croncmd="/home/$whoami/ravencoin-boot-strap-tools/sync_all_not_related_ipfs_hashes.sh > /home/$whoami/ravencoinipfsbootstrapmirror.log 2>&1"
# uncomment this alternative command if you want to sync all RELATED ravencoin IPFS objects (these are ipfs_hashes that appear inside any other ravencoin ipfs_hash)
#croncmd="/home/$whoami/ravencoin-boot-strap-tools/sync_all_and_related_ipfs_hashes.sh > /home/$whoami/ravencoinipfsbootstrapmirror.log 2>&1"

# Leave this be
cronjob=" 0 1 * * * $croncmd"

# To add it to the crontab, with no duplication:
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -```
```

# TODO: SystemD script for IPFS and automation to install service using sudo. 
A simple enough ish thing, and already presently supported on RavencoinOS on Raspian Pi based on Raspbian. Coming soon.
