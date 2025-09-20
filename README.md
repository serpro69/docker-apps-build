# alacritty-docker-build

Build [Alacritty](https://alacritty.org/) binary without installing rust or any other [build dependencies](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#dependencies)

## About

This docker build allows you to compile the latest version of alacritty from source without having to install rust or any dependencies.

## Requirements

- `docker` (only needed to build the binary, not to run the binary itself)

## Usage

- `make` will build the latest version of alacritty from the `latest` [rust image tag](https://hub.docker.com/_/rust#supported-tags-and-respective-dockerfile-links)

If you need to build from another OS version for compatibility purposes, add the `RUST_IMG_TAG` variable to make command, e.g.:

- `make RUST_IMG_TAG=bookworm` will build the latest version of alacritty from the `bookworm` rust image tag

The resulting binary is placed in the current directory after build, and will run `./alacritty --version` to verify that it works.

> [!NOTE]
> This build does not handle [post-build](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#post-build) steps, which will need to be taken care of by the user.

