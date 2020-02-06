#!/usr/bin/env bash

#### setup local var file
touch $HOME/.private.local

#### setup symlinks for config files
ln -s $PWD/zsh/.aliases $HOME/.aliases
ln -s $PWD/zsh/.utilFunctions $HOME/.utilFunctions
ln -s $PWD/zsh/.zshenv $HOME/.zshenv
ln -s $PWD/zsh/.zshrc $HOME/.zshrc


#### setup symlinks for auto update and then load it
ln -s $PWD/$USER.UpdateDotFiles.plist $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
launchctl load -w $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
