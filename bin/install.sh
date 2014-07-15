#!/bin/bash

set -e

source 'bin/echo_helper.sh'
source 'bin/file_helper.sh'

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_DIR="$( cd $FILE_DIR && cd .. && pwd )"

DOTFILES_DIR="$HOME/.dotfiles"

show_introduction() {
  info_echo "This scripts installs your dotfiles"
  info_echo "for more information see README"
}

symlink_dotfiles_to_home_directory() {
  if ! [[ "$HOME" == "$REPO_DIR" ]]; then
    warning_echo "Symlinking dotfiles directory to home directory..."
    ln -s -v -h -f $REPO_DIR $DOTFILES_DIR
  fi
}

install_zsh_themes() {
  warning_echo "Installing ZSH theme..."

  local overwrite_all=false backup_all=false skip_all=false

  source_zsh_themes=$(find -L "$DOTFILES_DIR/zsh/themes" -maxdepth 2 -name '*.zsh-theme')

  for source_zsh_theme in $source_zsh_themes; do
    basename_zsh_theme=$(basename $source_zsh_theme)
    destination_zsh_theme="$HOME/.oh-my-zsh/themes/$basename_zsh_theme"

    link_file $source_zsh_theme $destination_zsh_theme
  done
}

install_dotfiles() {
  warning_echo "Installing dotfiles..."

  local overwrite_all=false backup_all=false skip_all=false

  source_dotfiles=$(find -L "$DOTFILES_DIR" -maxdepth 2 -name '*.symlink')

  for source_dotfile in $source_dotfiles; do
    destination_dotfile="$HOME/.$(basename "${source_dotfile%.*}")"

    link_file "$source_dotfile" "$destination_dotfile"
  done
}

main() {
  show_introduction

  symlink_dotfiles_to_home_directory
  
  install_zsh_themes
  install_dotfiles
}

main