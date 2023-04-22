#!/usr/bin/env sh

git clone https://github.com/AstroNvim/AstroNvim "$HOME/.config/nvim"

git clone https://github.com/joske/astronvim_user.git "$HOME/.config/nvim/lua/user"

echo "alias vim=nvim" >>"$HOME/.bashrc"
