#/bin/bash

git config --global --add safe.directory /workspaces/MyLab
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install inetutils-ping sshpass direnv packer vim -y
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install CascadiaCode
eval "$(oh-my-posh --init --shell bash --config ~/.kali.omp.json)"