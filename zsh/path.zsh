# PATH for ZSH
#
# Load order precedence:
# 1. The ./bin directory of RVM gems
# 2. The ./bin directory of RVM rubies
# 3. The ./bin directory of the present working directory (e.g. subl)
# 4. The /usr/local/bin and /usr/local/sbin directories (e.g. homebrew)
# 5. The ./bin directory of DOTFILES ENV variable
# 6. The /usr/bin and /usr/sbin directories of PATH ENV variable
# 7. The ./bin directory of RVM

# Load ZSH into PATH
export PATH="./bin:/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

# Load RVM into PATH as a function (for scripting)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
