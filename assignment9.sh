if [ -e "$1" -a -e "$2" ];then
	cat "$1" >> "$2"
fi
