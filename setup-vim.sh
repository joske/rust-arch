#!/usr/bin/env sh

RUN git clone -b minimal https://github.com/joske/astronvim_v4 ~/.config/nvim

echo "alias vim=nvim" >>"$HOME/.bashrc"
