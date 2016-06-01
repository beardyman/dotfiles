function get_pwd() {
  local dir="${PWD/$HOME/~}"
  local prompt=$(sed "s:\([^/]\)[^/]*/:\1/:g" <<<$dir)
  echo $prompt;
}

function hg_prompt_info {
  if [ $(in_hg) ]; then
    _DISPLAY=$(hg_get_branch_name)
    echo "$ZSH_PROMPT_BASE_COLOR$(hg_dirty)$ZSH_THEME_HG_PROMPT_PREFIX\
$ZSH_THEME_REPO_NAME_COLOR$_DISPLAY$ZSH_PROMPT_BASE_COLOR$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_HG_PROMPT_SUFFIX$ZSH_PROMPT_BASE_COLOR"
    unset _DISPLAY
  fi
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function get_vcs() {
  echo "$(hg_prompt_info)$(git_prompt_info)"
}

ZSH_THEME_HG_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_HG_PROMPT_CLEAN="$fg[green]"
ZSH_THEME_HG_PROMPT_PREFIX="$(hg_dirty)[hg:"
ZSH_THEME_HG_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

PROMPT='
$fg[cyan]%m: $fg[yellow]$(get_pwd): $(get_vcs)
$reset_color→ '
