# Oh My Zsh theme by JanDintel
#
# Based on the robbyrussell theme:
# https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/robbyrussell.zsh-theme
#
# Place the file into the ~/.oh-my-zsh/themes directory
#

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

RPROMPT='$(rvm_gemset)[$(rvm_prompt)]'

function rvm_gemset {
  if [[ $(rvm_prompt gemset) == '' && -e 'Gemfile' ]]
  then echo "%{$fg[red]%}[Gemfile present but no RVM gemset]%{$reset_color%}"
  fi
}

function rvm_prompt {
  ~/.rvm/bin/rvm-prompt $1
}