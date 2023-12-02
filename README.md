# Neovim Setup

## Ubuntu Environment
1. Install nvim.
2. Copy this Configuration to $HOME/.config/nvim
3. :PlugInstall

## Pluging Manager - Vim-Plug
Use :PlugInstall and :PlugClean to update plugins

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Treesiter
Use bash and fish to avoid errors. You may also add more languages
:TSInstall bash fish


## Telescope Plugin
Fuzzy Finder. Using with Fzf-Native.

```sh
sudo apt-get install ripgrep
```

## Settings and Remaps
They are in $HOME/.config/nvim/lua/tangorf/*
I'm using $HOME/.config/nvim/lua/tangorf/init.lua

This file is loaded from the .config/nvim/init.vim and loads
the settings.lua and remap.lua


## LSP Zero
Use with :Mason 
Note that using :LspInstall on top of a file will recommend LSPs for that language.


## Codeium
Free IA Autocompletion tool
:Codeium Auth



---



# OS Setup

## Terminator

```sh
sudo add-apt-repository ppa:gnome-terminator/ppa -y # Terminator Team PPA
sudo apt update
sudo apt install terminator
```

Finally, set as default terminal emulator
```sh
sudo update-alternatives --config x-terminal-emulator
```
If this fails, try
```sh
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'
```

## Oh My Zsh
https://github.com/ohmyzsh/ohmyzsh

Zsh Dependency
```sh
sudo apt install zsh
chsh -s $(which zsh) # Set zsh as default, needs logout
```

Then
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Tmux

```sh
sudo apt install tmux
```

Install the Tmux Plugin Manager
https://github.com/tmux-plugins/tpm
Plugins are installed to `~/.tmux/plugins/`

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Then, create a `~/.tmux.conf` file 


