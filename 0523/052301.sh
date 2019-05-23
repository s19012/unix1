cut -d : -f 7 /etc/passwd | grep /bin/bash | cut -d : -f 1 /etc/passwd | sort
