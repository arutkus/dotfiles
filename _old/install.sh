#!/bin/sh

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

# Set default shell.
echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

# Configure Vim.
ln -sf ~/dotfiles/vim/init.vim ~/nvim/init.vim
ln -sF ~/dotfiles/vim/ftplugin ~/nvim/ftplugin
ln -sF ~/dotfiles/vim/config ~/nvim/config
ln -sF ~/dotfiles/vim/pluggedconf ~/nvim/pluggedconf
curl -fLo ~/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sf ~/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
