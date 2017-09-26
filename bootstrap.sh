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

ln -sf ${current_dir}/.bashrc ~/.bashrc
ln -sf ${current_dir}/.gitconfig ~/.gitconfig
ln -sf ${current_dir}/.gitattributes ~/.gitattributes
ln -sf ${current_dir}/.vimrc ~/.vimrc
ln -sf ${current_dir}/.zshrc ~/.zshrc

if [[ ! -f ${current_dir}/.exports-path ]]; then
  echo "${current_dir}/.exports-path not found, so creating new one"
  touch ${current_dir}/.exports-path

  echo.
  echo "Follow the sample file ${current_dir}/.exports-path.sample to use exports and path"
  echo "Add all your system specific exports and path to ${current_dir}/.exports-path"
fi

ln -sf ${current_dir}/.exports-path ~/.exports-path

echo done
