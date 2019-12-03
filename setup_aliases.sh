#!/bin/sh

set -e

make_link(){
    src=$1
    dest=$2
    [ -s $dest ] && rm -r $dest
    ln -sf $src $dest
}

make_link $(pwd)/tmux.conf ~/.tmux.conf
make_link $(pwd)/emacs.d ~/.emacs.d
make_link $(pwd)/gitignore ~/.gitignore
make_link $(pwd)/gitconfig ~/.gitconfig
make_link $(pwd)/i3 ~/.config/i3
make_link $(pwd)/fish ~/.config/fish
make_link $(pwd)/bin ~/bin

echo "aliases created"
