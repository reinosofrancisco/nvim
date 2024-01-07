# Neovim Setup

## Ubuntu Environment
1. Install nvim. See [https://github.com/neovim/neovim/blob/master/BUILD.md]
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

For the Java Lsp, install java, jdtls and java-debug-adapter
```
sudo apt install openjdk-17-jdk
```

## Codeium
Free IA Autocompletion tool
:Codeium Auth

## Plugin Dependency
```
sudo apt install npm
```

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

## Oh My Zsh Plugins

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
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
Then, create a `~/.tmux.conf` file.
Remember that you NEED to install the plugins by <Prefix-I>


---

## Install NerfFonts on Windows 10,11

Run this script where the downloaded .ttf files are:

```vbscript
Set ofso = CreateObject("Scripting.FileSystemObject")
SourceFolder = ofso.GetParentFolderName(Wscript.ScriptFullName)

Const FONTS = &H14&

Set objShell  = CreateObject("Shell.Application")
Set oSource   = objShell.Namespace(SourceFolder)
Set oWinFonts = objShell.Namespace(FONTS)

' Lame VBscript needs 4 f*ing lines instead of "if (/\.ttf$/i) " ...
Set rxTTF = New RegExp
rxTTF.IgnoreCase = True
rxTTF.Pattern = "\.ttf$"

FOR EACH FontFile IN oSource.Items()
    IF rxTTF.Test(FontFile.Path) THEN   
            oWinFonts.CopyHere FontFile.Path
                END IF
                NEXT
```
