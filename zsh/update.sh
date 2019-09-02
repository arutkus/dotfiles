echo -e "${blue} Update npm packages..."
npm install -g npm
npm update -g
echo -e "${green} ...done\n"

#---------------------------------------

echo -e "${blue} Update composer global packages..."
composer global update
cgr update
echo -e "${green} ...done\n"

#---------------------------------------

echo -e "${blue} Update neovim plugins..."
# Update all the plugins
nvim --noplugin +PlugUpdate +qa
echo -e "${green} ...done\n"

brew update
brew services list
#---------------------------------------

#echo -e "${blue} Update tmux plugins..."
#$HOME/.tmux/plugins/tpm/bin/update_plugins all
#echo -e "${green} ...done\n"
