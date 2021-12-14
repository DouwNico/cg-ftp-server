# cg-ftp-server

a bash script for deploying a linux sftp server

voor handmatig uitvoeren:
curl -L https://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/script.sh -o ./script.sh && curl -L https://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/sshd_config -o ./sshd_config && chmod +x ./script.sh && sudo ./script.sh

voor bij userdata:
curl -L https://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/script.sh -o ./script.sh && curl -L https://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/sshd_config -o ./sshd_config && chmod +x ./script.sh && ./script.sh