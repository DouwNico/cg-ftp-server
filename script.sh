#!/bin/sh

add_a_user() {
    USER=$1
    PASSWORD=$2
    GROUP=$3
    echo "Adding user $USER ..."
    useradd -m $USER -g $GROUP
    passwd $USER $PASSWORD
    chmod 700 /home/$USER
    echo "Added user $USER to $GROUP"
}

###
# Main body of script starts here
###
echo "Start of script..."
addgroup sftpgroup2
add_a_user sftpuser2 W@chtwoord sftpgroup2
add_a_user douwe W@chtwoord sftpgroup2
add_a_user pepijn W@chtwoord sftpgroup2
echo "copy config to destination"
cp --force ./sshd_config /etc/ssh/sshd_config
echo "restarting ssh service"
systemctl restart ssh
echo "End of script..."
