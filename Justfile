# File:        Justfile
# Author:      Zakhary Kaplan <https://zakhary.dev>
# Created:     17 Jan 2024
# SPDX-License-Identifier: NONE
# Vim:         set fdl=0 fdm=marker ft=make:

# ---------------
# -- Variables --
# ---------------

# Directories
out := "./build"
src := "./src"

# Features
email := "1"
phone := ""

# Targets
target := "main"


# ---------------
# --  Recipes  --
# ---------------

# default recipe
_: all

# build all artifacts
all: (build)

# compile a document
build *opts: dirs
    @typst compile              \
        --input email={{email}} \
        --input phone={{phone}} \
        {{opts}}                \
        {{src}}/{{target}}.typ  \
        {{out}}/{{target}}.pdf

# clean build artifacts
clean:
    @rm -rfv {{out}}

# make target directories
[private]
dirs:
    @mkdir -p {{out}}

# list available recipes
help:
    @just --list

# build and open target
[macos]
open: build
    @open {{out}}/{{target}}.pdf

# watch for changes in a document
watch *opts: dirs
    @typst watch                \
        --input email={{email}} \
        --input phone={{phone}} \
        {{opts}}                \
        {{src}}/{{target}}.typ  \
        {{out}}/{{target}}.pdf


# ---------------
# -- Recursive --
# ---------------

# compile for an application
app email="1" phone="1":
    @just --set email {{email}} --set phone {{phone}} build

# compile for web hosting
web email="1" phone="": && build
    @just --set email {{email}} --set phone {{phone}} build
