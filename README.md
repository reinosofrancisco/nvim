## Ubuntu Environment
1. Install nvim.
2. Copy this Configuration to $HOME/.config/nvim
3. :PlugInstall

## Windows 10 Enviroment
1. Download nvim (modify $PATH environmental variable to include the path/to/nvim)
2. Copy this Configuration to $HOME/AppData/Local/nvim
3. :PlugInstall

## Pluging Manager - Vim-Plug

// TODO
Remember to use :PlugInstall and :PlugClean to update plugins

## Telescope Plugin
Installed with Vim-Plug

`<Space> ff` -> Telescope
`<Space> gg` -> live_grep

Remember to install the dependency
Windows - `choco install ripgrep`
Ubuntu  - `sudo apt-get install ripgrep` 

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
I'm currently using jdtls

## Known Errors

`treesitter/query.lua:273: Query error at 9:4. Invalid node type "heredoc_end".`

:TSInstall bash fish


