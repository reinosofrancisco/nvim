# Neovim Setup

## Windows 10 Enviroment
1. Download nvim (modify $PATH environmental variable to include the path/to/nvim)
2. Copy this Configuration to $HOME/AppData/Local/nvim
3. :PlugInstall

Modify the settings.lua to turn on the background transparency 

## Pluging Manager - Vim-Plug
Use :PlugInstall and :PlugClean to update plugins

For Windows:
```sh
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

## Treesiter
Use bash and fish to avoid errors. You may also add more languages.

`:TSInstall bash fish`

## Telescope Plugin
Fuzzy Finder. Using with Fzf-Native.

Remember to install the dependencies
```
choco install ripgrep
choco install mingw
```
Run refreshenv to refresh to envoriment.


### Fzf-native
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


## LSP Zero
Use with :Mason Note that using :LspInstall on top of a file will recommend LSPs for that language.

## Codeium
Free IA Autocompletion tool :Codeium Auth

