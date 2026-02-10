SHELL=/bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

.PHONY: all help alacritty snapraid

DIR         := ${CURDIR}
CURRENT_UID := $$(id -u)
CURRENT_GID := $$(id -g)

all: help

help:
	echo "TODO"

# APPS

alacritty:
	@$(MAKE) -C alacritty
	mv alacritty/alacritty build/alacritty

snapraid:
	@$(MAKE) -C snapraid
	mv snapraid/build/* build/
