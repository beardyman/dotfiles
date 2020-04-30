# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
 
# Env vars --------------------------------------------------------------------
[ -f ~/.zshenv ] && source ~/.zshenv

# Theme -----------------------------------------------------------------------
ZSH_THEME="avit"

# Setup oh-my-zsh -------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# zsh options -----------------------------------------------------------------
#setopt autolist
#setopt correct
#unsetopt cdablevars # this REALLY slowed down oh-my-zsh for me

# nodenv ----------------------------------------------------------------------
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# Aliases ---------------------------------------------------------------------
[ -f ~/.aliases ] && source ~/.aliases

# Utils -----------------------------------------------------------------------
[ -f ~/.utilFunctions ] && source ~/.utilFunctions

# Private things --------------------------------------------------------------
[ -f ~/.private.local ] && source ~/.private.local


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jordannornhold/projects/brewdicrous/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jordannornhold/projects/brewdicrous/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jordannornhold/projects/brewdicrous/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jordannornhold/projects/brewdicrous/node_modules/tabtab/.completions/sls.zsh