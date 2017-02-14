#!/bin/bash

current_dir=$(dirname $(readlink -f $0))

ln -sfn ${current_dir}/.zsh ~/.zsh

ln -sf ${current_dir}/.bashrc ~/.bashrc
ln -sf ${current_dir}/.gitconfig ~/.gitconfig
ln -sf ${current_dir}/.gitattributes ~/.gitattributes
ln -sf ${current_dir}/.zshrc ~/.zshrc

echo done
