#!/bin/bash

usage()
{
    local script_name=$(basename "$0")
    cat << END
使い方: $script_name DIRPATH
DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示
DIRPATH - 容量を求めるファイルパスのパスを指定、複数指定可

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
