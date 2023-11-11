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
sudo apt install zsh neofetch lolcat exa nvm python3 ghdl gtkwave gh docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin podman -y
sudo groupadd docker
sudo usermod -aG docker $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl -fsSL https://bun.sh/install | bash
nvm install node

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.oh-my-zsh/plugins/zsh-autocomplete

echo "Moving configs..."
cp -f .zshrc $HOME/
cp -f .p10k.zsh $HOME/
cp -rf neofetch $HOME/.config/

echo "Done."
echo "Restart shell using \"exec zsh\""
