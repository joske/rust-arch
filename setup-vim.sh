#!/usr/bin/env sh

git clone -b minimal https://github.com/joske/astronvim_v4 ~/.config/nvim

echo "alias vim=nvim" >>"$HOME/.bashrc"
