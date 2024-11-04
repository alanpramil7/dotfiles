#!/bin/bash
# URL-encode the query
query=$(echo "$@" | sed 's/ /+/g')
# Open the search in your default browser
xdg-open "https://duckduckgo.com/?q=$query"
