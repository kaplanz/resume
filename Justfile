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
build  := "./build"
src    := "./src"

# Targets
target := "main"


# ---------------
# -- Recipies  --
# ---------------

# default recipe
_: all

# build all artifacts
all: (build)

# compile a document
build doc=target: dirs
    @typst compile {{src}}/{{doc}}.typ {{build}}/{{doc}}.pdf

# clean build artifacts
clean:
    @rm -rfv {{build}}

# make targer directories
[private]
dirs:
    @mkdir -p {{build}}

# list available recipes
help:
    @just --list

# build and open target
[macos]
open doc=target: (build doc)
    @open {{build}}/{{doc}}.pdf

# watch for changes in a document
watch doc=target: dirs
    @typst watch {{src}}/{{doc}}.typ {{build}}/{{doc}}.pdf
