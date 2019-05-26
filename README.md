# RavencoinIPFSInstaller
An automatic Ravencoin IPFS Installer and Pinner for Linux Debian/Ubuntu/Redhat/CentOS operating Systems

# What is RavencoinIPFSInstaller?
RavencoinIPFSInstaller is an automatic installer for Ravencoin + IPFS for people that want to support the Ravencoin cryptocurrency Network's interplanetary filesystem. Ravencoin is dependent upon a protocol called IPFS which allows using DHT torrent technology to distribute files. When someone creates an ravencoin asset, they can attach an IPFS hash, which is a unique signature for a file. This system allows anyone to join the public DHT network and mirror a copy of all the Ravencoin objects. (as is done with https://ravencoinos.org). Except that this version will automatically install IPFS + sync the ravencoin blockchain ipfs objects from the https://bootstrap.ravenland.org/ service on any Linux virtual Machine or Dedicated Linux Server aswell. 


# Install + Setup
```
wget https://raw.githubusercontent.com/ravenlandpush/RavencoinIPFSInstaller/master/install.sh
chmod +x install.sh
./install.sh
```

# Starting the IPFS Daemon / Server
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

For those that perhaps already have an IPFS node running and want to heko support the ravencoin network, or merely just have a copy of all the IPFS hashes added to it. Look no further! The below steps show someone who has an existing IPFS server how to pin all of the Objects on the Ravencoin blockchain using Ravenland's existing ravencoin-ipfs-bootstrap-tools (https://github.com/ravenlandpush/ravencoin-ipfs-bootstrap-tools). The steps are given below.


```
git clone https://github.com/ravenlandpush/ravencoin-ipfs-bootstrap-tools
cd ravencoin-ipfs-bootstrap.tools
chmod +x sync_all_not_related_ipfs_hashes.sh
./sync_all_not_related_ipfs_hashes.sh
```


