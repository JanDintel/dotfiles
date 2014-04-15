# Oh My Zsh configuration by JanDintel
#
# Place the file in ~/.zshrc
#

# Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
ZSH_THEME="jandintel"

# Ruby version
RPROMPT='[`~/.rvm/bin/rvm-prompt`]'

# General aliases
alias reload!='. ~/.zshrc'
alias grep='grep --colour=always'
alias zshconfig='subl ~/.zshrc'
alias ohmyzsh='subl ~/.oh-my-zsh'

# Git aliases
alias st='git status'
alias co='git checkout'
alias br='git branch'
alias add='git add'
alias com='git commit'
alias diff='git diff'
alias diffs='git diff --staged'

# Rails aliases
alias rdm='rake db:migrate'
alias rdmt='rake db:migrate RAILS_ENV=test'
alias rdr='rake db:reset'
alias rdrt='rake db:reset RAILS_ENV=test'
alias rdrh='rake db:drop; rake db:create; rake db:migrate'
alias rdrht='rake db:drop RAILS_ENV=test; rake db:create RAILS_ENV=test; rake db:migrate RAILS_ENV=test'

# Set how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=3

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set the load PATH (load /.rvm/bin before /usr/bin)
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Set RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Set RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
