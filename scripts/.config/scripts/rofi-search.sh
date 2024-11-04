#!/bin/bash

# Prompt the user for input using rofi
query=$(rofi -dmenu -p "DuckDuckGo Search:")

# If query is not empty, open the DuckDuckGo search in the browser
if [ -n "$query" ]; then
    xdg-open "https://duckduckgo.com/?q=$(echo "$query" | tr " " "+")"
fi

