DIR := ${CURDIR}
CURRENT_UID := $$(id -u)
CURRENT_GID := $$(id -g)
IMG_TAG = latest
.PHONY: all help alacritty

all: help

alacritty:
	make -C alacritty RUST_IMG_TAG=$(IMG_TAG)

help:
