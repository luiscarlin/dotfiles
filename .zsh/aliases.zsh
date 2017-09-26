if [[ $(uname) == "Linux" ]]; then
  alias ls='ls --color=auto'  # make sure always use color with ls
elif [[ $(uname) == "Darwin" ]]; then
  alias ls='ls -G'            # make sure always use color with ls
else
  echo "OS not supported"
fi

alias ll='ls -lAh'          # long list, show all (without . and ..), human readable units
alias l.='ls -ld .*'        # long list, show only ones starting with dot

alias cd..='cd ..'              # forgive missing whitespace
alias grep='grep --color=auto'  # use color for grep when not piping
alias nid='npm install --save-dev' # install dev dependency and save in package.json
alias nis='npm install --save'     # install dependency and save in package.json
