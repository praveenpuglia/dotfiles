#!/bin/bash
npm list -g --depth=0 > npm-list.txt
rm Brewfile && brew bundle dump
cp ~/.zshrc .
cp ~/.p10k.zsh .
