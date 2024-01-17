# File:        Justfile
# Author:      Zakhary Kaplan <https://zakhary.dev>
# Created:     17 Jan 2024
# SPDX-License-Identifier: NONE
# Vim:         set fdl=0 fdm=marker ft=make:

# ---------------
# --  Aliases  --
# ---------------

alias b  := build
alias cl := clean
alias o  := open
alias w  := watch


# ---------------
# -- Variables --
# ---------------

# Directories
out := "./build"
src := "./src"

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
build doc=target: dirs
    @typst compile {{src}}/{{doc}}.typ {{out}}/{{doc}}.pdf

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
open doc=target: (build doc)
    @open {{out}}/{{doc}}.pdf

# watch for changes in a document
watch doc=target: dirs
    @typst watch {{src}}/{{doc}}.typ {{out}}/{{doc}}.pdf
