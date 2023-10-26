#!/bin/sh

url="https://github.com/tmux-plugins/tpm"
dir="$XDG_DATA_HOME/tmux/plugins/tpm"
if [ ! -d "$dir" ]; then
    git clone "$url" "$dir"
else
    cd "$dir" && git pull
fi
