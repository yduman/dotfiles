# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/yadullah.duman/.zsh/completions:"* ]]; then export FPATH="/Users/yadullah.duman/.zsh/completions:$FPATH"; fi
export ZSH="$HOME/.oh-my-zsh"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# Pointing Lazygit to desired config folder
export XDG_CONFIG_HOME="$HOME/.config"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export DOCKER_HOST=$(docker context inspect -f '{{ .Endpoints.docker.Host }}')
export PATH="~/Library/Android/sdk/platform-tools:$PATH"

# -------------------- OH-MY-ZSH -------------------- #
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
plugins=(git z docker asdf)
source $ZSH/oh-my-zsh.sh

# -------------------- ALIAS -------------------- #
# Shortcuts 
alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias ghostconf="vim ~/.config/ghostty/config"
alias c="clear"
alias c.="code-insiders ."
alias code="code-insiders"
alias cat="bat -p"

# Git
alias gpl="git pull"
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git log"

# Docker
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}'"
alias dpsa="docker ps -a --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}'"
alias dlogs="docker logs --follow"
alias dvls="docker volume ls"

# Tools
alias air="~/go/bin/air"
alias lg="lazygit"
alias ldo="lazydocker"
alias ls="eza --color=always --icons=always --no-user"
alias ll="eza --color=always --icons=always --long --no-user"
alias l="eza --color=always --icons=always --long --all"

# -------------------- SOURCE -------------------- #
eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
source <(fzf --zsh)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. "/Users/yadullah.duman/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit
# pnpm
export PNPM_HOME="/Users/yadullah.duman/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

. "$HOME/.local/bin/env"

# bun completions
[ -s "/Users/yadullah.duman/.bun/_bun" ] && source "/Users/yadullah.duman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
