export ZSH="/home/prox/.oh-my-zsh"

# ZSH CONFIG
ZSH_THEME="spaceship"
COMPLETION_WAITING_DOTS="true"

# PLUGINS
plugins=(git, yarn, zsh-autosuggestions, zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# ALIASES
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias sourcezsh="source ~/.zshrc"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade -y"
alias i="sudo apt install"
alias ga="git add"
alias gc="git commit -m" 
alias gl="git log"
alias gs="git status"
alias gp="git push"
alias c="clear"
alias cat="bat"

# NEEDED LINES AT THE END OF THIS FILE
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi
