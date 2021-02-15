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

# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
#
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your ~/.zshrc:
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Load rbenv automatically by appending the following to ~/.zshrc:
eval "$(rbenv init -)"

# # Add Java (JDK) to PATH
# if [[ -s "/usr/libexec/java_home" ]]; then
#   export JAVA_HOME=$(/usr/libexec/java_home)
#   export PATH="$PATH:$JAVA_HOME/bin"
# fi
#
# # Add Android SDK tools to PATH (e.g. used for React native)
# if [[ -d "$HOME/Library/Android/sdk" ]]; then
#   export ANDROID_HOME="$HOME/Library/Android/sdk"
#   export PATH="$PATH:$ANDROID_HOME/tools"
#   export PATH="$PATH:$ANDROID_HOME/platform-tools"
# fi
