# docker-apps-build

Build apps binaries/installers locally without any build dependencies.

## About

These docker builds allows you to compile the latest versions of various apps from source without having to install any dependencies in your environment.

### Available Builds

- [alacritty](./alacritty) - a modern terminal emulator that comes with sensible defaults, but allows for extensive configuration.
- [snapraid](./snapraid) - backup program designed for disk arrays, primarily intended for home media centers with large, infrequently changing files.

## Requirements

- `docker` (only needed to build the binaries)

## Usage

- `make <app-name>`, for example `make alacritty` will build the latest version of [alacritty](./alacritty) from the `latest` base (rust, in case of alacritty) image tag.

If you need to build from another OS version for compatibility purposes, add the `IMG_TAG` variable to make command, e.g.:

- `make alacritty IMG_TAG=bookworm` will build the latest version of [alacritty]() from the `bookworm` rust image tag

The resulting binary is placed in the build directory after build, and will run `./alacritty --version` to verify that it works.

For more info see readme files in each app's directory.
