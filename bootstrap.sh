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
  echo "${current_dir}/.exports-path not found"
  touch ${current_dir}/.exports-path
  echo "Created new .exports-path file in ${current_dir}"
  echo "Follow the sample file ${current_dir}/.exports-path.sample"
  echo "Add all your sysmem specific exports and path to ${current_dir}/.exports-path"
fi

ln -sf ${current_dir}/.exports-path ~/.exports-path

echo done
