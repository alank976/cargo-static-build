#!/bin/sh -l

# hack, move home to $HOME(/github/home)
ln -s /root/.cargo $HOME/.cargo
ln -s /root/.rustup $HOME/.rustup

# go to the repo root
cd $GITHUB_WORKSPACE
mkdir -p target
rustup target add x86_64-unknown-linux-musl

bash -c "$*"
chmod 0777 ./target
