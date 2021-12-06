
# only install if its not already installed
[[ -z $(which brew) ]] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

[[ ! -e /Applications/iTerm-2.app ]] && brew install iTerm2
[[ -z $(which redis-cli) ]] && brew install redis
[[ -z $(which postgres) ]] && brew install postgres
[[ -z $(which aws) ]] && brew install awscli
