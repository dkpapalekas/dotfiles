#!/bin/sh

IFS='
'

alias lns='ln -s -v --'

for f in home/*
do
	lns "$(realpath $f)" "$HOME/.$(basename $f)"
done

lns $(realpath vscode/config.yaml) $HOME/.config/code-server/config.yaml
lns $(realpath vscode/keybindings.json) $HOME/.local/share/code-server/User/keybindings.json
lns $(realpath vscode/settings.json) $HOME/.local/share/code-server/User/settings.json
