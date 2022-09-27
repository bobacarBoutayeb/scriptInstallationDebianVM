ip=$(sudo virsh net-dhcp-leases default | grep "runner" | cut -d/ -f1 | cut -d\  -f16)
ssh-copy-id -i $HOME/.ssh/id_ed25519.pub user@$ip
