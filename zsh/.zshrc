# Path to your oh-my-zsh installation.
export ZSH=/Users/jnornhold/.oh-my-zsh
 
# Env vars --------------------------------------------------------------------
[ -f ~/.zshenv ] && source ~/.zshenv

# Theme -----------------------------------------------------------------------
ZSH_THEME="avit"

# oh-my-zsh plugins -----------------------------------------------------------
plugins=(brew git mercurial npm node heroku osx)

# Setup oh-my-zsh -------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# zsh options -----------------------------------------------------------------
setopt autolist
#setopt correct
unsetopt cdablevars # this REALLY slowed down oh-my-zsh for me

# nodenv ----------------------------------------------------------------------
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# Aliases ---------------------------------------------------------------------
[ -f ~/.aliases ] && source ~/.aliases

# Utils -----------------------------------------------------------------------
[ -f ~/.utilFunctions ] && source ~/.utilFunctions

# Private things --------------------------------------------------------------
[ -f ~/.private.local ] && source ~/.private.local

# oh hai hamurai --------------------------------------------------------------
[ -f /opt/hamurai/env.sh ] && source /opt/hamurai/env.sh
