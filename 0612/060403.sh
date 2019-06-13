#!/bin/bash

usage()
{
    local script_name=$(basename "$0")
    cat << END
Usage: $script_name PATTEN [PATH] [NAME_PATTEN]
Find file in current directory recursively, and print lines which match PATTEN.

    PATH          find file in PATH directory, instead of current directory
    NAME_PATTEN   specify name patten to find file

Examples:
    $script_name return
    $script_name return ~ '*.txt'
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

if [ -d "$1" ]; then
    # ディレクトリ内のファイルが実行可能ファイルかチェックして
    # 実行可能ファイルであれば表示
    for file in $(ls "$1")
    do
        # fileが実行ファイルであれば表示
        if [ -x "${1}/${file}" ]; then
            echo "$file"
        fi
    done
else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi
