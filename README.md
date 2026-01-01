# alacritty-docker-build

Build apps binaries locally without installing any build dependencies.

## About

These docker builds allows you to compile the latest versions of various apps from source without having to install any dependencies in your environment.

## Requirements

- `docker` (only needed to build the binaries)

## Usage

- `make <app-name>`, for example `make alacritty` will build the latest version of [alacritty](./alacritty) from the `latest` base (rust, in case of alacritty) image tag.

If you need to build from another OS version for compatibility purposes, add the `IMG_TAG` variable to make command, e.g.:

- `make alacritty IMG_TAG=bookworm` will build the latest version of [alacritty]() from the `bookworm` rust image tag

The resulting binary is placed in the current directory after build, and will run `./alacritty --version` to verify that it works.

For more info see readme files in each app's directory.
