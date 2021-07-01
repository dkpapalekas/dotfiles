#!/bin/sh

for f in home/*
do
	ln -s -v -- "$(realpath $f)" "$HOME/.$(basename $f)"
done
