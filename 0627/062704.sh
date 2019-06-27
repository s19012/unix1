sudo ls -lR ${USER} ~ 2> /dev/null | awk '{print $5}' | sort -nr -k 2 | head -n 5
