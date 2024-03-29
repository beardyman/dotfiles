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

# adds aws cli auto completion if aws cli is installed
if [[ -n $(which aws) ]]; then
    complete -C aws_completer aws
fi

# add vertica to the path if it exists
if [[ -d /opt/vertica/bin ]]; then
    PATH=$PATH:/opt/vertica/bin
fi


export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
