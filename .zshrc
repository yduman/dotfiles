export ZSH=/Users/yadullahd/.oh-my-zsh
export NODE_PATH="/usr/local/lib/node_modules"
export PATH=$HOME/flutter/bin:$PATH

# Docker within iTerm
eval "$(docker-machine env default)"

# ===============================================
#        ZSH & POWERLEVEL9K CONFIGURATION        
# ===============================================
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="awesome-patched"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
USER=``
COMPLETION_WAITING_DOTS="true"

# ===============================================
#                     PLUGINS
# ===============================================
plugins=(git, npm, docker, docker-compose, grunt, zsh-autosuggestions, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ===============================================
#                ALIAS EVERYTHING
# ===============================================
alias zshconfig="vim /Users/yadullahd/.zshrc"
alias zshthemes="ls .oh-my-zsh/themes"
alias vimconfig="vim /Users/yadullahd/.vimrc"
alias c="clear"

# ===============================================
#                   GIT ALIASES
# ===============================================
alias addall="git add ."
alias smileycommit="git commit -m \":)\""
alias pushmaster="git push origin master"
alias branches="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias ga="git add "
alias gcm="git commit -m " 
alias gl="git log"
alias gs="git status"
alias gp="git push "

# Needed shit
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/yadullahd/.sdkman"
[[ -s "/Users/yadullahd/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/yadullahd/.sdkman/bin/sdkman-init.sh"

# added by travis gem
[ -f /Users/yadullahd/.travis/travis.sh ] && source /Users/yadullahd/.travis/travis.sh

