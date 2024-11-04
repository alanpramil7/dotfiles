#!/usr/bin/env python3
import sys
import urllib.parse
import subprocess

query = ' '.join(sys.argv[1:])
encoded_query = urllib.parse.quote_plus(query)
url = f"https://duckduckgo.com/?q={encoded_query}"

subprocess.run(['xdg-open', url])
