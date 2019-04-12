if [ -e "$1" -a ! -r "$1" ];then 
	echo "Read Permission is allowed"
	exit
fi

echo "Do you want to overwrite it??"
echo "Press y for yes and n for no"
read op

if [ ! -e "$2" ];then
	echo "Files doesn't exit"
	exit
fi

case "$op" in
"y")	cat $1>$2
	echo "Override Successful" 
;;
"n")	echo "Exiting...."
	exit 1
;;
*) 	echo "No Allowed"
;;	
esac
