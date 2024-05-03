#!/usr/bin/env sh

rustup install stable
rustup install nightly
rustup component add rust-analyzer
ln -sf $($HOME/.cargo/bin/rustup which --toolchain stable rust-analyzer) "$HOME/.cargo/bin/rust-analyzer"
echo export PATH="$PATH:$HOME/.cargo/bin" >>"$HOME/.bashrc"
