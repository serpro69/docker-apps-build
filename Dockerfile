ARG TAG="latest"

FROM rust:${TAG}

RUN apt-get update && \
  apt-get install -y cmake g++ pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

RUN git clone https://github.com/alacritty/alacritty.git /tmp/alacritty

WORKDIR /tmp/alacritty

RUN git checkout tags/$(git describe --tags $(git rev-list --tags --max-count=1))

RUN RUSTFLAGS='-C link-arg=-s' cargo build --release

