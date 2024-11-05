# Created by newuser for 5.9
# Prompt
PS1='%n@%m %1~ ➜ '

# default exports
export DOT=$HOME/personal/dotfiles

# Export
export PATH="/home/al/.zvm/bin:$PATH"
export PATH="/home/al/.local/bin:$PATH"
export PATH="/home/al/.config/scripts:$PATH"

# Zoxide
eval "$(zoxide init zsh)"

# Aliases
source ~/.zsh_aliases

neofetch
