#!/usr/bin/env bash

# only install if its not already installed
[[ -z $(which brew) ]] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh and ohmyzsh
if [[ ! -e /bin/zsh ]]; then
  #install zsh
  brew install zsh
  #install oh my zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install the homebrew version of git
if [[ -n $(git --version | grep Apple) ]]; then
  brew install git
  git config --global credential.helper osxkeychain
fi

# python install
if [[ -z $(which python3) ]]; then
  brew install python

  # sets up symlinks so that the brew installed python is the default
  ln -s /usr/local/bin/python3 /usr/local/bin/python
  ln -s /usr/local/bin/pip3 /usr/local/bin/pip
fi

[[ ! -e /Applications/iTerm-2.app ]] && brew install --cask iterm2
[[ -z $(which redis-cli) ]] && brew install redis
[[ -z $(which postgres) ]] && brew install postgres
[[ -z $(which aws) ]] && brew install awscli
[[ -z $(which mas) ]] && brew install mas

[[ -z $(which nodenv) ]] && brew install nodenv
[[ -z $(which wget) ]] && brew install wget