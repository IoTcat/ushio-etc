#!/bin/bash
cd $(dirname $0)
rm -f /root/.ssh/authorized_keys
ln -s /mnt/config/ssh/authorized_keys /root/.ssh/authorized_keys
ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa
rm -f /etc/hosts.allow
ln -s /mnt/etc/common/hosts/hosts.allow /etc/hosts.allow
rm -f /etc/hosts.deny
ln -s /mnt/etc/common/hosts/hosts.deny /etc/hosts.deny
sleep 15s
sed -i '/'$(hostname)'/d' /mnt/config/ssh/authorized_keys
cat /root/.ssh/id_rsa.pub>>/mnt/config/ssh/authorized_keys
cd /mnt/config
git add . -A
git commit -m "ssh by $(hostname)"
git push
cd /mnt
git add . -A
git commit -m "ssh by $(hostname)"
git push
