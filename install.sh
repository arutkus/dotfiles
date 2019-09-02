#!/bin/sh

# Step 1: Generate/paste SSH keys.
# Step 2: Clone this repo to ~/dotfiles.
# Step 3: Sudo run this installer <3

echo "Setting up your Mac..."

# Reinstate the 'anywhere' setting in gatekeeper for apps with unidentified developers.
spctl --master-disable

# Install Brew.
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Brew recipes.
brew update

# Install Brewfile bundle.
brew tap homebrew/bundle
brew bundle

# Start mariadb whenever mac starts.
brew services start mariadb

# Oh-My-Zsh.
rm -rf ~/.oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Set default shell.
echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

# Configure Hyper.
ln -sf ~/dotfiles/hyper/hyper.js ~/.hyper.js

# Configure Vim.
ln -sf ~/dotfiles/vim/init.vim ~/nvim/init.vim
ln -sF ~/dotfiles/vim/ftplugin ~/nvim/ftplugin
ln -sF ~/dotfiles/vim/config ~/nvim/config
ln -sF ~/dotfiles/vim/pluggedconf ~/nvim/pluggedconf
curl -fLo ~/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Configure Ctags.
ln -sf ~/dotfiles/ctags ~/.ctags.d

# Install and configure Valet.
composer global require laravel/valet
valet install
mkdir ~/sites
valet park ~/sites

# Install other installers.
composer global require laravel/installer

# Install other global PHP packages.
composer global require hirak/prestissimo
composer global require "squizlabs/php_codesniffer=*"
composer global require phpmd/phpmd
composer global require friendsofphp/php-cs-fixer

# Install hammerspoon.
ln -sf ~/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua

# Install tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Install tmuxinator
ln -sf ~/dotfiles/tmuxinator/jrnl.yml ~/tmuxinator/jrnl.yml

# Install jrnl
ln -sf ~/dotfiles/jrnl.sh/jrnl ~/jrnl

# Heyo! thnx jesseleite
echo '*****'
echo 'Done <3 <3 <3'
