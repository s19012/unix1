file=`find ${1} -type f 2> /dev/null | wc -l`
echo "file => ${file}"

dir=`find ${1} -type d 2> /dev/null | wc -l`
echo "directory => ${dir}"

usage()
{
    local script_name=$(basename "$0")

    cat << END
    使い方: $script_name DIRPATH
    DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
    DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定

END
}

if [ -d "$1"]; then
    for file in $(ls "$1")
    do
        if [ -x "${1}/${file}" ]; then
            echo "$file"
        fi
    done
else
    echo "${1}: ディレクトリではありません"
fi


