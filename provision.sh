#!/bin/sh

# To suppress the stdin warning message
export DEBIAN_FRONTEND=noninteractive

# Enable ssh password login on ssh
echo "Enable ssh password login on ssh"
sed '/^PasswordAuthentication/s/no/yes/' /etc/ssh/sshd_config -i
systemctl restart sshd