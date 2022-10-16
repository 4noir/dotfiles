#! /bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <student>"
    exit 1
fi

dir="$1-2026-asm-s3-tp06"

# copy makefile
cp key/fractal_canopy/Makefile "$dir/fractal_canopy/"
cp key/image/Makefile "$dir/image/"

# check authors
if [ ! -f "$dir/AUTHORS" ]; then
    echo " **************MISSING AUTHORS **************"
else
    firstname=$(echo $1 | sed 's/\([a-z]*\)\.\([a-z]*\)/\1/g')
    lastname=$(echo $1 | sed 's/\([a-z]*\)\.\([a-z]*\)/\2/g')
    printf "${firstname^}\n${lastname^}\n$firstname.$lastname\n$firstname.$lastname@epita.fr\n" | diff "$dir/AUTHORS" -
    if [ $? -ne 0 ]; then
        echo "************** INVALID AUTHORS **************"
    fi
fi


cookie=$(xauth list | head -1 | sed "s/unix: /unix:1 /")
sudo docker build --build-arg MY_XAUTH_COOKIE="$cookie" -t tp6 .
sudo docker run --rm -it -e DISPLAY --net=host -v $(pwd)/$dir:/tp6 tp6 /bin/bash

