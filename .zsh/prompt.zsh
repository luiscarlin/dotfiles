autoload -Uz vcs_info

precmd() {
  vcs_info
}

setopt prompt_subst

PROMPT='
[${YELLOW}%n ${WHITE}at ${BLUE}%m ${WHITE}in ${MAGENTA}%~${RESET}]
%D{%H:%M}${CYAN}${vcs_info_msg_0_}${RESET} $ '
