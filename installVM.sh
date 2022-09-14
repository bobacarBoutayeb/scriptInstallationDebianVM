#!/bin/bash
sudo virsh destroy test
sudo virsh undefine test --remove-all-storage --wipe-storage
#echo "Choose a name for your VM:"
#read name
#sudo virt-install --name=$name \
sudo virt-install --name=test \
--vcpus=2 \
--memory=2048 \
--location=/home/bobacar.boutayeb@Digital-Grenoble.local/Downloads/debian-testing-amd64-DVD-1.iso  \
--disk size=10 \
--os-variant=debiantesting \
--graphics spice \
--initrd-inject=preseed.cfg