#!/bin/bash

while :
do
# git add/commit/pushの選択画面
    echo '1) git add -i'
    echo '2) git commit'
    echo '3) git push'
    echo '*) exit'
    echo -n 'select?(1/2/3/*):'
    read select
    echo $select
    case "$select" in
        # git add -i 選択
        1)
            git add -i
            git status
            ;;
        # git commit 選択
        2)
            echo -n 'comment:'
            read comment
            git commit -m "$comment"
            # git log/git log --oneline/git log --oneline --name-only 選択画面
            echo '1) git log'
            echo '2) git log --oneline'
            echo '3) git log --oneline --name-only'
            echo '*) exit'
            echo -n 'select?(1/2/3/*):'
            read select
            echo $select
            case "$select" in
                # git log 選択
                1)
                    git log
                    ;;
                # git log --oneline
                2)
                    git log --oneline
                    ;;
                # git log --oneline --name-only
                3)
                    git log --oneline --name-only
                    ;;
                *)
                    exit 1
                    ;;
            esac
            ;;
        # git push 選択
        3)
            git push
            ;;
        *)
            echo 'end...'
            exit 0
            ;;
    esac
done
