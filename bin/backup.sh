#!/bin/bash

timestamp=$(date +'%m%d%Y')

cp -f $HOME/logs/z/.z $HOME/Dropbox/backups/logs/z/.z-$timestamp
cp -f $HOME/logs/zsh/.zsh_history $HOME/Dropbox/backups/logs/zsh/.zsh_history-$timestamp
cp -f $HOME/.viminfo $HOME/Dropbox/backups/logs/vim/.viminfo-$timestamp
