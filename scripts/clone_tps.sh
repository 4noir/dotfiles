#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "usage: <script> <activity> <file>"
    exit 1
fi

FILE="$2"

while read -r line;
do
    if [ "$line" != "" ]; then
        git clone raphael.leroy@git.forge.epita.fr:p/epita-prepa-asm/"$1"/epita-prepa-asm-"$1"-"$line".git "$line"
    fi
done < "$FILE"
