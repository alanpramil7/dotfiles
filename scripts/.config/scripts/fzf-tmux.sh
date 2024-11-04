#!/bin/bash

function fzf_tmux_open() {
    local dir
    dir=$(find "${1:-$HOME}" -type d 2>/dev/null | fzf)
    
    if [ -n "$dir" ]; then
        cd "$dir" || return
        
        if [ -n "$TMUX" ]; then
            # If already in tmux, switch to new session
            tmux new-session -d -s "$(basename "$dir")" 2>/dev/null
            tmux switch-client -t "$(basename "$dir")"
        else
            # If not in tmux, create and attach to new session
            tmux new-session -A -s "$(basename "$dir")"
        fi
    fi
}

# Call the function with any arguments passed to the script
fzf_tmux_open "$@"
