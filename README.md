# dotfiles

Install dotfiles on your MacOS workstation. Inspiration from [holman does dotfiles by Holman](https://github.com/holman/dotfiles).

## Requirements

Make sure that Oh-My-Zsh, a framework for your ZSH configuration [website](http://ohmyz.sh/) [github](https://github.com/robbyrussell/oh-my-zsh) is installed.

## Install

Run the installation script:

```console
$ ./script/install.sh
```

## Workings

The installation script works as follows:

1. It symlinks the project to the `$HOME` directory into a directory called `.dotfiles` (e.g. `~/.dotfiles`)
2. It installs the ZSH themes to the `$HOME/.oh-my-zsh/themes` directory
3. It installs the files ending in `*.symlink` to the `$HOME` directory

## Usage

The dotfiles are split up per 'topic' or 'category', which is just a directory. The extension on the dotfile decides how the file is handled:

- `*.zsh`: File will get automatically loaded into your shell
- `*.symlink`: File will get symlinked to the `$HOME` directory
- `path.zsh`: File will be loaded first and is expected to set up `$PATH` or similar
- `completion.zsh`: File will be loaded last and is expected to set up autocomplete

However some dotfiles are a bit special, these exist in a special directory:

- `./bin/*`: Any file in `./bin/` will get added to your `$PATH` and be made available everywhere (e.g. `subl`)

The dotfiles allow setting up project aliases, these aliases are automatically loaded into your shell. To enable a project alias, create a `.alias` file in the project directory.
