#!/bin/bash
# Install IPFS as root for RavencoinLinuxBootstrap

whoami=$(whoami);
echo "Installing as $whoami"

sudo wget https://dist.ipfs.io/go-ipfs/v0.4.20/go-ipfs_v0.4.20_linux-amd64.tar.gz

sudo tar zxvf go-ipfs_v0.4.20_linux-amd64.tar.gz

rm -f go-ipfs_v0.4.20_linux-amd64.tar.gz

sudo cp go-ipfs/ipfs /bin

ipfs init

#
echo "Support for Ubuntu, Debian, possibly Redhat and CentOS"
echo "trying yum and aptitude install for git installation. Safely ignore command not found errors.."
sudo yum install git
sudo apt-get install git

git clone https://github.com/ravenlandpush/ravencoin-ipfs-bootstrap-tools/

chmod +x ravencoin-ipfs-bootstrap-tools/sync_all_not_related_ipfs_hashes.sh
ravencoin-ipfs-bootstrap-tools/sync_all_not_related_ipfs_hashes.sh
