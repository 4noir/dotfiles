#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "usage: <script> <tp_number> <student>"
    exit 1
fi

git clone git@git.assistants.epita.fr:p/2022/2026-asm-s3-tp"$1"/"$2"-2026-asm-s3-tp"$1".git
