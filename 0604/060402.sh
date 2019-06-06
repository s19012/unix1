for file in "$@"
do
    if [ -f "$file" ]; then
        du "$file"
    else
        echo "${file}: 通常のファイルではありません"
    fi
done
