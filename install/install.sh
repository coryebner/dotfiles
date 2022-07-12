#!/bin/bash

install () {
    sudo dnf install -y $1
}

echo "Starting install..."
mkdir -p ~/build

sudo dnf update

#Install packages
install " util-linux-user"

install "zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

install "tmux"
install "tldr"
install "tree"
install "fzf"
install "ripgrep"

sudo yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch gettext curl
if ! [ -d $HOME/build/neovim ]; then
    git clone https://github.com/neovim/neovim ~/build/neovim
    cd ~/build/neovim/
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    cd ~
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc
nvm install --lts

install "java-17-openjdk.x86_64"

npm install sfdx-cli --global
npm install @salesforce/cli --global

