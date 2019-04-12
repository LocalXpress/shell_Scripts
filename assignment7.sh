echo "Enter the string: "
read str

len=`expr length "$str"`


i=1
j=`expr $len / 2`


while [ "$i" -le "$j" ]
do
   k=`echo $str|cut -c $i`
   l=`echo $str|cut -c $len`
   if [ $k != $l ];then
	echo "Not Palindrome"
	exit 0
   fi
   i=`expr $i + 1`
   len=`expr $len - 1`	
done

echo "Palindrome"
