#!/usr/bin/env bash

#### setup symlinks for config files
ln -s $HOME/.aliases $PWD/zsh/.aliases
ln -s $HOME/.utilFunctions $PWD/zsh/.utilFunctions
ln -s $HOME/.zshrc $PWD/zsh/.zshenv
ln -s $HOME/.aliases $PWD/zsh/.aliases


#### setup symlinks for auto update and then load it
ln -s $PWD/$USER.UpdateDotFiles.plist $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
launchctl load -w $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
