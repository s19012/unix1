start=$(date --date="2019/5/7" +'%s')
now=$(date +'%s')
echo $(((${now} - ${start})/(24 * 60 * 60)))日
