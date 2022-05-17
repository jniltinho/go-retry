SHELL := /bin/bash
PACKAGE_NAME:=retry


.PHONY: all

all: build

build:
	go build -ldflags="-s -w" -o bin/$(PACKAGE_NAME)_linux64
	ls -sh bin/$(PACKAGE_NAME)_linux64
	upx --best --lzma bin/$(PACKAGE_NAME)_linux64
	ls -sh bin/$(PACKAGE_NAME)_linux64

create-tar:
	cd bin/; tar -zcf $(PACKAGE_NAME)_linux64.tar.gz $(PACKAGE_NAME)_linux64
	ls -sh bin/


install-upx:
	apt-get -qq update
	apt-get install -yqq xz-utils curl
	curl -skLO https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz
	tar -xf upx-3.9*-amd64_linux.tar.xz
	cp upx-3.9*-amd64_linux/upx /usr/local/bin/
	chmod +x /usr/local/bin/upx
	rm -rf upx-3.9*

