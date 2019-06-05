export ZSH="/home/yduman/.oh-my-zsh"
export JAVA_HOME="/usr/lib/jvm/default-java"
export PATH=$PATH:$JAVA_HOME/bin

# ZSH CONFIG
ZSH_THEME="spaceship"
COMPLETION_WAITING_DOTS="true"

# PLUGINS
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# ALIASES
alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade -y"
alias i="sudo apt install"
alias ga="git add"
alias gc="git commit -m"
alias gl="git log"
alias gs="git status"
alias gp="git push"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias c="clear"

# NEXT LINES MUST BE AT THE END OF THIS FILE
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

