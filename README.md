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

## Windows 10 Enviroment
1. Download nvim (modify $PATH environmental variable to include the path/to/nvim)
2. Copy this Configuration to $HOME/AppData/Local/nvim
3. :PlugInstall

Modify the settings.lua to turn on the background transparency 

## Pluging Manager - Vim-Plug
Remember to use :PlugInstall and :PlugClean to update plugins

For Linux:
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

For Windows:
```sh
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

## Telescope Plugin
Installed with Vim-Plug

`<Space> ff` -> find_files
`<Space> fg` -> git_files
`<Space> gg` -> live_grep

Remember to install the dependency
Windows - `choco install ripgrep`
Ubuntu  - `sudo apt-get install ripgrep` 

## Fzf-native
For Linux it just works.

For Windows:
This is ~20 times faster than the default fzy-lua pattern used
make dependency for windows
`choco install make`
Then find the path to the plugins folder installed by Vim-Plug.
On Windows it should be $HOME/.local/share/nvim/site/plugged/*
go into /telescope-ffzf-native and run `make` 


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
Free (so far) IA Autocompletion tool
:Codeium Auth

## Known Errors

1.
`treesitter/query.lua:273: Query error at 9:4. Invalid node type "heredoc_end".`

:TSInstall bash fish

2.

Error detected while processing C:\Users\Francisco\AppData\Local\nvim\init.vim:
line   45:
No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.

Fix:
- choco install mingw
- Run refreshenv to refresh to envoriment.
- Start Neovim.


