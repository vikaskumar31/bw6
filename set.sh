#!/bin/bash

sudo apt-get update
sudo apt-get install nfs-common
sudo su
echo "centralrepo.localdomain:/opt/scripts /opt/scripts nfs   defaults        0       0" >> /etc/fstab
exit
sudo mkdir /opt/installers
sudo mkdir /opt/scripts
chown -r tibco:tibco /opt/installers
chown -r tibco:tibco /opt/scripts
sudo mount -t nfs centralrepo:/opt/installers /opt/installers
sudo mount -t nfs centralrepo:/opt/scripts /opt/scripts
