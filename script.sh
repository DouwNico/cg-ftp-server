#!/bin/sh

addgroup sftpgroup1
useradd -m sftpuser1 -g sftpgroup1
passwd sftpuser1 
chmod 700 /home/sftpuser1/

cp ./sshd_config /etc/ssh/sshd_config

systemctl restart ssh
