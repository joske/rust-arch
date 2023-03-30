FROM menci/archlinuxarm:base-devel

RUN pacman -Syu --noconfirm openssl-1.1 rustup vim neovim git fish fisher zip unzip gzip lazygit clang llvm rust-analyzer inetutils sccache

RUN rustup install stable

COPY config.toml /root/.cargo/config.toml

RUN cargo install cargo-udeps --locked

RUN rustup install nightly

RUN LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

RUN rm -rf $HOME/.config/lvim

RUN git clone https://github.com/joske/lvim.git $HOME/.config/lvim

RUN echo "export PATH=$PATH:$HOME/.local/bin" >> $HOME/.bashrc

