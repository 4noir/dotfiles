#!/bin/sh

SCRIPT=$(realpath "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")

for f in "$SCRIPT_PATH"/*
do
    THISCONF=$(basename "$f")
    if [ "$THISCONF" = 'link.sh' ] || [ "$THISCONF" = 'config' ] ||
        [ "$THISCONF" = 'README.md' ]
    then
        continue
    fi
    rm -rf "$HOME/.$THISCONF"
    ln -s "$SCRIPT_PATH/$THISCONF" "$HOME/.$THISCONF"
    if [ "$?" -ne 0 ]; then
        echo Failed to create link: "$HOME/.$THISCONF"
    fi
    # echo "$SCRIPT_PATH/$THISCONF will become $HOME/$THISCONF"
done

for f in "$SCRIPT_PATH"/config/*
do
    THISCONF=$(basename "$f")
    rm -rf "$HOME/.config/$THISCONF"
    ln -s "$SCRIPT_PATH/config/$THISCONF" "$HOME/.config/$THISCONF"
    if [ "$?" -ne 0 ]; then
        echo Failed to create link: "$HOME/.config/$THISCONF"
    fi
    # echo "$THISCONF"
done
