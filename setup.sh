#!/usr/bin/env bash

#### setup local var file
[[ ! -e $HOME/.private.local ]] && touch $HOME/.private.local

#### setup symlinks for config files
[[ ! -e $HOME/.aliases ]] && ln -s $PWD/zsh/.aliases $HOME/.aliases
[[ ! -e $HOME/.utilFunctions ]] && ln -s $PWD/zsh/.utilFunctions $HOME/.utilFunctions
[[ ! -e $HOME/.zshenv ]] && ln -s $PWD/zsh/.zshenv $HOME/.zshenv
[[ ! -e $HOME/.zshrc ]] && ln -s $PWD/zsh/.zshrc $HOME/.zshrc

#### setup profile gitignore
[[ ! -e $HOME/.gitingnore ]] && ln -s $PWD/.gitignore $HOME/.gitignore

#### setup vim config symlinks
[[ ! -e $HOME/.vimrc ]] && ln -s $PWD/.vimrc $HOME/.vimrc
[[ ! -e $HOME/.plug.vim ]] && ln -s $PWD/.plug.vim $HOME/.plug.vim

#### setup symlinks for auto update and then load it
[[ -d $HOME/Library/LaunchAgents ]] && \
ln -s $PWD/$USER.UpdateDotFiles.plist $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist && \
launchctl load -w $HOME/Library/LaunchAgents/$USER.UpdateDotFiles.plist
