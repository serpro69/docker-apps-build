.ONESHELL:

DIR         := ${CURDIR}
CURRENT_UID := $$(id -u)
CURRENT_GID := $$(id -g)

.PHONY: all help alacritty snapraid

all: help

help:
	echo "TODO"

# APPS

alacritty:
	make -C alacritty
	mv alacritty/alacritty build/alacritty

snapraid:
	make -C snapraid
	mv snapraid/build/* build/
