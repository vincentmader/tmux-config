#!/bin/sh

src=$(realpath "../src")
cfg="$XDG_CONFIG_HOME/tmux" 
if [ -L "$cfg" ]; then
    echo "A symlink at \"$cfg\" already exists!"
elif [ -d "$cfg" ]; then
    echo "A directory at \"$cfg\" already exists!"
elif [ -f "$cfg" ]; then
    echo "A file at \"$cfg\" already exists!"
else
    ln -s "$src" "$cfg"
fi
