# Enable zsh tab completion
autoload -U compinit
compinit

# Improve completion style appearance
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# autocompletion with arrow keys
zstyle ':completion:*' menu select
