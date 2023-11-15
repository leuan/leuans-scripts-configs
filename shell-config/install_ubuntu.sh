#!/bin/bash

echo "Installing dependencies..."
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt install zsh unzip neofetch lolcat exa python3 ghdl gtkwave gh docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin podman -y
sudo groupadd docker
sudo usermod -aG docker $USER
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -fsSL https://bun.sh/install | bash
nvm install node
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo "Moving configs..."
cp -f .zshrc $HOME/
cp -f .p10k.zsh $HOME/
cp -rf neofetch $HOME/.config/

echo "Done."
echo "Restart shell using \"exec zsh\""
