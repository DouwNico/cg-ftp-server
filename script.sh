#!/bin/sh

add_a_user() {
    USER=$1
    PASSWORD=$2
    GROUP=$3
    echo "Adding user $USER ..."
    echo useradd -m $USER -g $GROUP
    echo passwd $USER $PASSWORD
    echo chmod 700 /home/$USER
    echo "Added user $USER to $GROUP"
}

###
# Main body of script starts here
###
echo "Start of script..."
echo addgroup sftpgroup1
add_a_user sftpuser1 W@chtwoord sftpgroup1
add_a_user douwe W@chtwoord sftpgroup1
add_a_user pepijn W@chtwoord sftpgroup1
echo "copy config to destination"
echo cp --force ./sshd_config /etc/ssh/sshd_config
echo "restarting ssh service"
echo systemctl restart ssh
echo "End of script..."
