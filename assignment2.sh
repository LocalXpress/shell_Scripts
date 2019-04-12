if [ $1 = "3" ];then
	echo "You have entered 3. Enter a different number"
elif [ $1 -gt "3" ];then
	r=`expr $1 \* 2`
	echo "The result is: $r"
elif [ $1 -lt "3" ];then
	r=`expr $1 \* 3`
	echo "The result is: $r"
else
	echo "The input format is wrong!!"
fi
	
