file=`find ~ -type f 2> /dev/null | wc -l`
echo "file => ${file}"

dir=`find ~ -type d 2> /dev/null | wc -l`
echo "directory => ${dir}"
