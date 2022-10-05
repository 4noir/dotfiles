#!/bin/sh

SCRIPT_PATH=$(dirname "$0")

for f in "$SCRIPT_PATH"/*
do
    THISCONF=$(basename "$f")
    if [ "$THISCONF" = 'link.sh' ] || [ "$THISCONF" = 'config' ] ||
        [ "$THISCONF" = 'README.md' ]
    then
        continue
    fi
    echo "$THISCONF"
    rm -rf "$HOME/.$THISCONF"
    ln -s "$SCRIPT_PATH/$THISCONF" "$HOME/.$THISCONF"
    # echo "$SCRIPT_PATH/$THISCONF will become $HOME/$THISCONF"
done

for f in "$SCRIPT_PATH"/config/*
do
    THISCONF=$(basename "$f")
    rm -rf "$HOME/.config/$THISCONF"
    ln -s "$SCRIPT_PATH/config/$THISCONF" "$HOME/.config/$THISCONF"
    # echo "$THISCONF"
done
