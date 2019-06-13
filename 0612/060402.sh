#!/bin/bash

usage()
{
    local script_name=$(basename "$0")

    cat << END
Usage: $script_name PATTEN [PATH] [NAME_PATTEN]
Find file in current directory recursively, and print lines which match PATTEN.

    PATH           find file in PATH directory, instead of current directory
    NAME_PATTEN    specify name patten to find file

Examples:
    $script_name return
    $script_name return ~ '*.txt'
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        # doでファイル容量を求める
        du "$file"
    else
        # エラーメッセージ
        echo "${file}: 通常のファイルではありません"
    fi
done
