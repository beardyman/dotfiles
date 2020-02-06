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

