#!/bin/zsh

setopt -e
#setopt -x

cd "$(dirname $0)/docs"
find * -iname \*.html | xargs tidy -q -e --gnu-emacs true --strict-tags-attributes true
