#!/bin/bash
current_dir = $(pwd)

echo "Installing dependencies..."
sudo pacman -Syu

# Amethyst
sudo pacman -Sy --needed base-devel pacman-contrib cargo
git clone https://git.getcryst.al/crystal/pkgbuilds/ame
cd ame && makepkg -si
cd $current_dir

sudo pacman -Sy zsh unzip neofetch lolcat exa python3 ghdl gtkwave github-cli podman git
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -fsSL https://bun.sh/install | bash
nvm install node
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo "Moving configs..."
cp -f .zshrc $HOME/
cp -f .p10k.zsh $HOME/
cp -rf neofetch $HOME/.config/

echo "Cleaning up..."
rm -rf ame

echo "Done."
echo "Restart shell using \"exec zsh\""

