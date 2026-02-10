# snapraid-docker-build

Build [snapraid](https://www.snapraid.it/) installer (`.deb`) file without installing any build dependencies.

## About

This docker build allows you to compile the latest version of snapraid from source without having to install any dependencies locally.

## Requirements

- `docker` (only needed to build the installer)

## Usage

- `make` will build the latest version of snapraid from the `trixie` [debian image tag](https://hub.docker.com/_/debian#supported-tags-and-respective-dockerfile-links)

If you need to build from another OS version for compatibility purposes, add the `RUST_IMG_TAG` variable to make command, e.g.:

- `make RUST_IMG_TAG=bookworm` will build the latest version of snapraid from the `bookworm` rust image tag

The resulting binary is placed in the current directory after build, and will run `./snapraid --version` to verify that it works.

> [!NOTE]
> This build does not handle [post-build](https://github.com/snapraid/snapraid/blob/master/INSTALL.md#post-build) steps, which will need to be taken care of by the user.
