#!/bin/bash

if [[ $(uname) == "Linux" ]]; then
  echo "Setting up as Linux"
  current_dir=$(dirname $(readlink -f $0))
elif [[ $(uname) == "Darwin" ]]; then
  echo "Setting up as Mac"
  brew install coreutils
  current_dir=$(dirname $(greadlink -f $0))
else
  echo "What is this OS?"
  exit 1
fi

echo "Linking all dot files in ${current_dir} to ${HOME}"
ln -sfn ${current_dir}/.zsh ~/.zsh
ln -sfn ${current_dir}/.vim ~/.vim

ln -sf ${current_dir}/.bashrc ~/.bashrc
ln -sf ${current_dir}/.gitconfig ~/.gitconfig
ln -sf ${current_dir}/.gitattributes ~/.gitattributes
ln -sf ${current_dir}/.vimrc ~/.vimrc
ln -sf ${current_dir}/.zshrc ~/.zshrc

if [[ ! -f ${current_dir}/.custom ]]; then
  echo "${current_dir}/.custom not found, so creating new one"
  touch ${current_dir}/.custom
fi

ln -sf ${current_dir}/.custom ~/.custom

echo "Follow the sample file ${current_dir}/.custom.sample to add custom exports"
echo "done!"
