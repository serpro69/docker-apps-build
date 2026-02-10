SHELL=/bin/bash
.SHELLFLAGS := -eu -o pipefail -c
.ONESHELL:

.PHONY: all build copy

DIR             := ${CURDIR}
CURRENT_UID     := $$(id -u)
CURRENT_GID     := $$(id -g)
DEBIAN_IMG_TAG   = trixie
SNAPRAID_VERSION = $(shell curl --silent "https://api.github.com/repos/amadvance/snapraid/releases/latest" | jq -r '.tag_name' | sed -E 's/^v(.*)/\1/')
TARGET           = debian # or redhat
PLATFORM         = linux/amd64

all: build copy

build:
	@docker build --platform $(PLATFORM) -f dockerfile-$(TARGET) --build-arg TAG=$(DEBIAN_IMG_TAG) --build-arg VERSION=$(SNAPRAID_VERSION) -t snapraid .

copy:
	@ID=$$(docker create --platform $(PLATFORM) snapraid)
	docker cp $${ID}:/build/ .
	docker rm -v $${ID}
	docker rmi snapraid
