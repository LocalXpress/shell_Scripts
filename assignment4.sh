if [ "$#" -ne "2" ];then
	echo "Enter two Arguments"
	exit 1
fi

if [ "$1" -le "0" -o "$2" -le "0" ];then
	echo "Enter Positive Numbers"
	exit 0
fi

if [ "$1" -gt "$2" ];then
	r=`expr $1 / $2`
	echo "The result is: $r"
else
	r=`expr $2 / $1`
	echo "The result is: $r"
	
fi
	
