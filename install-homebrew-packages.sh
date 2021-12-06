
# only install if its not already installed
[[ -z $(which brew) ]] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
