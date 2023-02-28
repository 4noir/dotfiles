#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "usage: <script> <tp_number> <student>"
    exit 1
fi

git clone git@git.forge.epita.fr:p/epita-prepa-asm/2026-s3-tp"$1"/epita-prepa-asm-2026-s3-tp"$1"-"$2".git
