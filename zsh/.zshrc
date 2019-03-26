# Path to your oh-my-zsh installation.
export ZSH=/Users/jnornhold/.oh-my-zsh
 
# Env vars --------------------------------------------------------------------
[ -f ~/.zshenv ] && source ~/.zshenv

# Theme -----------------------------------------------------------------------
ZSH_THEME="avit"

# oh-my-zsh plugins -----------------------------------------------------------
plugins=(brew git)

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

# oh hai hamurai --------------------------------------------------------------
[ -f /opt/hamurai/env.sh ] && source /opt/hamurai/env.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jnornhold/.nodenv/versions/8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jnornhold/.nodenv/versions/8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jnornhold/.nodenv/versions/8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jnornhold/.nodenv/versions/8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
plugins+=(zsh-better-npm-completion)

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jnornhold/.nodenv/versions/10.14.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jnornhold/.nodenv/versions/10.14.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh