#!/bin/zsh

setopt -e
#setopt -x

homebrew_prefix=$(brew --prefix)

npm=$homebrew_prefix/bin/npm
if ! [[ -x $npm ]]; then
	print -u2 "Installing npm..."
	brew install node
fi

browser_sync=$homebrew_prefix/bin/browser-sync
if ! [[ -x $browser_sync ]]; then
	print -u2 "Installing browser-sync..."
	npm -g install browser-sync
fi

cd "$(dirname $0)/docs"
exec $browser_sync -w
