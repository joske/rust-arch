#!/usr/bin/env sh

rustup install stable
rustup install nightly
echo export PATH="$PATH:$HOME/.cargo/bin" >>"$HOME/.bashrc"
