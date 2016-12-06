#!/bin/sh
INSTALL_DIR=~/dev

# Simple echo of issue
warn()
{
    echo "$1" >&2
}

# error
error()
{
    warn "$1"
    exit 1
}

install()
{
    [ -e "$INSTALL_DIR/vimrc" ] && error "$INSTALL_DIR/vimrc already exists."
    [ -e "~./.vim" ] && error "~/.vim already exists."
    [ -e "~/.vimrc" ] && error "~/.vimrc already exists."

    cd "$INSTALL_DIR"
    git clone https://vthiery@bitbucket.org/vthiery/vimrc.git
    cd vimrc

    # Update or init submodules recursively
    git submodule update --init --recursive

    # Point to the new vimrc
    cd ~
    ln -s "$INSTALL_DIR/vimrc/vimrc" .vimrc
    ln -s "$INSTALL_DIR/vimrc/vim" .vim
    touch ~/.vim/user.vim

    echo "Done."
}

# Execute install()
install
