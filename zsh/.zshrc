# Created by newuser for 5.9
# Prompt
# PS1='%F{blue}%n@%m %1~ %f ➜ '

# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red
PROMPT='%F{blue}%n@%m %~%f %F{red}${vcs_info_msg_0_}%f ➜ '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# default exports
export DOT=$HOME/personal/dotfiles
export EDITOR=vim

# Export
export PATH="/home/al/.zvm/bin:$PATH"
export PATH="/home/al/.local/bin:$PATH"
export PATH="/home/al/.config/scripts:$PATH"

export PATH="/home/al/personal/projects/rain/zig-out/bin:$PATH"

# Zoxide
eval "$(zoxide init zsh)"

# Aliases
source ~/.zsh_aliases

# Sets time displayed to access time and hides icons
export FEX_DEFAULT_COMMAND="fex --time-type accessed --dotfiles --no-time --icons"

# Function to launch yazi file manager
yazi_launcher() {
    yazi "$@"
}

# Create a ZLE widget for yazi
zle -N yazi_widget yazi_launcher

# Bind Ctrl+Y to the yazi widget
bindkey '^Y' yazi_widget
