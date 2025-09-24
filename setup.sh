#!/bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Config zsh
cp ./zshrc.conf ~/.zshrc

# Install neovim and git
brew install neovim git

# Install nerd font
brew install --cask font-jetbrains-mono-nerd-font

# Install tmux
brew install tmux

# Config tmux
cp ./tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

# setup tm script
cp ./tm ~/.local/bin/tm
chmod +x ~/.local/bin/tm

# Install nvchad
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

# Config tmux navigator for nvim and theme
cp nvim/tmux-navigator.lua ~/.config/nvim/lua/plugins/tmux-navigator.lua
cp nvim/mappings.lua ~/.config/nvim/lua/mappings.lua
cp nvim/chadrc.lua ~/.config/nvim/lua/chadrc.lua

defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.4; killall Dock

echo "Setup complete! Apply profile iterm2 and please restart your terminal."