# Enable Starship prompt

export STARSHIP_CONFIG="$HOME/.config/starship.toml"

eval "$(starship init zsh)"

# Set some useful defaults
export EDITOR="zed"
export PATH="$HOME/bin:$PATH"

# Enable case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Improve history behavior
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Aliases for speed
alias ll="ls -lah"
alias ..="cd .."
alias ...="cd ../.."
alias update="brew update && brew upgrade && brew cleanup"

# Source other configs if needed
# [ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
