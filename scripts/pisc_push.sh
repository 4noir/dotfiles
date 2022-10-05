#!/bin/sh

EXERCISE=$(basename "$(pwd)")
VER=1
if [ -f ".version" ]
then
    VER=$(($(<'.version') + 1))
fi


echo "about to tag exercises-$EXERCISE-$VER and push $(echo *)"
echo "sure? [y/N]"


read -r push

if [ "$push" = "y" ]
then
    git add .
    git commit
    git tag -a "exercises-$EXERCISE-$VER" -m "$EXERCISE tag v$VER"
    git push --follow-tags
    echo "$VER" > ".version"
    # if [ "$(git push --follow-tags)" -eq 0 ]
    # then
    #     echo "$VER" > ".version"
    #     echo "done!"
    # else
    #     echo "error during push"
    # fi
else
    echo "aborted"
fi


