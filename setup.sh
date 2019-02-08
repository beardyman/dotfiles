#!/usr/bin/env bash

#### setup symlinks for config files
ln -s $PWD/zsh/.aliases $HOME/.aliases
ln -s $PWD/zsh/.utilFunctions $HOME/.utilFunctions
ln -s $PWD/zsh/.zshenv $HOME/.zshrc
ln -s $PWD/zsh/.aliases $HOME/.aliases


#### setup symlinks for auto update and then load it
ln -s $PWD/$USER.UpdateDotFiles.plist $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
launchctl load -w $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
