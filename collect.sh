#!/bin/bash
rm Brewfile && brew bundle dump
cp ~/.zshrc .
cp ~/.p10k.zsh .
