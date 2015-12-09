#!/usr/bin/env zsh

FWDIR=$(cd $(dirname $0); pwd)

if [[ -n $ZSH_CUSTOM ]] ; then
    cp $FWDIR/avit-virtualenv.zsh-theme $ZSH_CUSTOM
    sed -i 's/^ZSH_THEME=.*/ZSH_THEME=avit-virtualenv/' $HOME/.zshrc
    echo "installed, re-login to take it effect"
else
    echo "ZSH_CUSTOM not set" >&2
fi

