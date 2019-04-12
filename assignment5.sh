L=0;P=0;Z=0;

if [ "$#" -ne "10" ];then
	echo "Invalid number of inputs"
	exit
fi

printf "%s\n" $@|sort -n

while [ "$#" -gt "0" ]
do
  if [ "$1" -gt "0" ];then
  	P=`expr $P + 1`
  elif [ "$1" -lt "0" ];then
  	L=`expr $L + 1`
  else
  	Z=`expr $Z + 1`
  fi
shift
done

echo "Total number of positive integers are "$P
echo "Total number of zeroes are "$Z
echo "Total number of negative integers are "$L

