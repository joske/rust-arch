#!/usr/bin/env sh

rustup install nightly
rustup install stable
rustup default stable

cargo install cargo-udeps --locked
