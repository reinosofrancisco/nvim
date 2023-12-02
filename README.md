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




---

# Neovim Setup

## Ubuntu Environment
1. Install nvim.
2. Copy this Configuration to $HOME/.config/nvim
3. :PlugInstall

You should probably download Terminator
`sudo apt install terminator`
and set it as the default terminal
`sudo update-alternatives --config x-terminal-emulator`

## Pluging Manager - Vim-Plug
Remember to use :PlugInstall and :PlugClean to update plugins

For Linux:
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Telescope Plugin
Installed with Vim-Plug

`<Space> ff` -> find_files
`<Space> fg` -> git_files
`<Space> gg` -> live_grep

Remember to install the dependency
Ubuntu  - `sudo apt-get install ripgrep` 

## Fzf-native
For Linux it just works.

## Settings and Remaps
They are in $HOME/.config/nvim/lua/tangorf/*
I'm using $HOME/.config/nvim/lua/tangorf/init.lua

This file is loaded from the .config/nvim/init.vim and loads
the settings.lua and remap.lua

`<Space> e`  -> Goes to netrw (Explorer)

## LSP Zero
So...

with :Mason
Using :LspInstall on top of a Java file will recommend LSPs for that language.
I'm currently using jdtls and lua_ls.

## Codeium
Free IA Autocompletion tool
:Codeium Auth

## Known Errors

1.
`treesitter/query.lua:273: Query error at 9:4. Invalid node type "heredoc_end".`

:TSInstall bash fish

