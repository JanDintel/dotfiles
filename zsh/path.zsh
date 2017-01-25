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

# Add RVM to PATH
if [[ -d "$HOME/.rvm/bin" ]]; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

# Load RVM into shell as a function for scripting (e.g. display current version and gemset)
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
 source "$HOME/.rvm/scripts/rvm"
fi

# Add Java (JDK) to PATH
if [[ -s "/usr/libexec/java_home" ]]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
  export PATH="$PATH:$JAVA_HOME/bin"
fi

# Add Android SDK tools to PATH (e.g. used for React native)
if [[ -d "$HOME/Library/Android/sdk" ]]; then
  export ANDROID_HOME="$HOME/Library/Android/sdk"
  export PATH="$PATH:$ANDROID_HOME/tools"
  export PATH="$PATH:$ANDROID_HOME/platform-tools"
fi
