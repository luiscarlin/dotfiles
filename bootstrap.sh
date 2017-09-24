#!/bin/bash

if [[ $(uname) == "Linux" ]]; then
  current_dir=$(dirname $(readlink -f $0))
elif [[ $(uname) == "Darwin" ]]; then
  brew install coreutils
  current_dir=$(dirname $(greadlink -f $0))
else
  echo "What is this OS?"
  exit 1
fi

ln -sfn ${current_dir}/.zsh ~/.zsh

ln -sf ${current_dir}/.bashrc ~/.bashrc
ln -sf ${current_dir}/.gitconfig ~/.gitconfig
ln -sf ${current_dir}/.gitattributes ~/.gitattributes
ln -sf ${current_dir}/.vimrc ~/.vimrc
ln -sf ${current_dir}/.zshrc ~/.zshrc

echo done
