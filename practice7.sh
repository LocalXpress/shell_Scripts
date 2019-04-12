fibonacchi()
{
	if [ "$1" = "1" ];then
		echo 0
		exit 
	elif [ "$1" = "2" ];then
		echo 1
	else
		echo $(( $(fibonacchi $(( $1 - 1 ))) + $(fibonacchi $(( $1 - 2 ))) ))	
	fi
}

fork_function()
{
	r=`expr $1 \* $2`
	echo $r
}

n=10

f=$(fibonacchi $n)
n=` expr $n - 1 `
l=$(fibonacchi $n)

#fork function used to multiply the last to numbers in Fibonacchi series
fork_function $f $l &


n=` expr $n + 2 `
while [ "$n" -ge "0" ]
do
	fibonacchi $n
	n=` expr $n - 1 `
done



