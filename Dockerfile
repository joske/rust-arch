FROM menci/archlinuxarm:base-devel

#COPY tls-ca-bundle.pem /etc/ca-certificates/extracted/

RUN pacman -Syu --noconfirm

RUN pacman -Sy --noconfirm openssl-1.1 rustup

RUN rustup install stable

RUN cargo install cargo-udeps --locked

RUN rustup install nightly

RUN pacman -S --noconfirm vim neovim git fish fisher zip unzip gzip lazygit clang llvm rust-analyzer inetutils
