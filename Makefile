DIR := ${CURDIR}
CURRENT_UID := $$(id -u)
CURRENT_GID := $$(id -g)
IMG_TAG = latest
.PHONY: all help alacritty

all: help

help:

alacritty:
	make -C alacritty RUST_IMG_TAG=$(IMG_TAG)
	mv alacritty/alacritty build/alacritty
