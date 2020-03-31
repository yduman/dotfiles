# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/yadullahd/.oh-my-zsh"
export PATH=$PATH
# export JAVA_HOME="/usr/lib/jvm/default-java"

# ---------- ZSH configs ---------- #
ZSH_THEME="powerlevel10k/powerlevel10k"
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# ---------- Plugins ---------- #
plugins=(docker zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ---------- Aliases ---------- #
alias zshconfig="vim ~/.zshrc"
alias p10kconfig="vim ~/.p10k.zsh"
alias sourcezsh="source ~/.zshrc"
alias update="brew update"
alias upgrade="brew upgrade"
alias outdated="brew outdated"
alias ga="git add"
alias gs="git status"
alias gc="git commit -m"
alias gl="git log"
alias gp="git push"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias c="clear"
alias code="code-insiders"
alias c.="code ."
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}'"
alias dpsa="docker ps -a --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}'"
alias dlogs="docker logs --follow "
alias projects="cd ~/Projects"
alias uni="cd ~/Uni"
alias p10k-update="git -C $ZSH_CUSTOM/themes/powerlevel10k pull"
alias notes="cd ~/Projects/notes"

# ---------- CONFIG AT EOF ---------- #

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

