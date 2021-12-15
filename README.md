# cg-ftp-server

A bash script for deploying a linux sftp server on an Azure linux vm.

## handmatig uitvoeren

```sh
curl -L https://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/script.sh -o ./script.sh && curl -L https://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/sshd_config -o ./sshd_config && chmod +x ./script.sh && sudo ./script.sh
```

## voor bij userdata

```txt
[base64(concat('#include\nhttps://raw.githubusercontent.com/DouwNico/cg-ftp-server/main/cloud-init.yaml'))]
```
