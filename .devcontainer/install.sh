#/bin/bash

git config --global user.email "laurent.lienhard@outlook.com"
git config --global user.name "LaurentLienhard"
git config --global --add safe.directory /workspaces/MyLab
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install inetutils-ping sshpass direnv wget vim software-properties-common xorriso -y
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install packer

curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install CascadiaCode
eval "$(oh-my-posh --init --shell bash --config ~/.kali.omp.json)"