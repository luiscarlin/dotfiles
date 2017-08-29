source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/history.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/bindings.zsh
source ~/.zsh/prompt.zsh

# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# your path
export PATH="$PATH:$GRADLE_HOME/bin:$HEROKU_HOME/bin"
