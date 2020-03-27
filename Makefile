
PATH := node_modules/.bin:$(PATH)
SHELL := /bin/bash

NODE ?= $(shell which node)
YARN ?= $(shell which yarn)
PKG ?= $(if $(YARN),$(YARN),$(NODE) $(shell which npm))

.PHONY:

all: lint test clean compile .PHONY

lint: .PHONY
	eslint src --ext .ts

test: .PHONY
	jest

clean: .PHONY
	rimraf dist

compile: .PHONY
	tsc