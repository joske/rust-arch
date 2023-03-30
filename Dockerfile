FROM menci/archlinuxarm:base-devel

#COPY tls-ca-bundle.pem /etc/ca-certificates/extracted/

RUN pacman -Syu --noconfirm openssl-1.1 rustup vim neovim git fish fisher zip unzip gzip lazygit clang llvm rust-analyzer inetutils sccache

RUN rustup install stable

COPY config.toml /root/.cargo/config.toml

RUN cargo install cargo-udeps --locked

RUN rustup install nightly

