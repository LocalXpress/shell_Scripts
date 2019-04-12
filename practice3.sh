#To find if a string is palindrome or not.

echo "Enter the string: "
read str

len=` expr length "$str" `
j=` expr $len / 2 `
i=1

while [ "$i" -le "$j" ]
do
	k=` echo "$str" | cut -c $i `
	l=` echo "$str" | cut -c $len `
	if [ "$k" != "$l" ];then
		echo "It is not Palindrome"
		exit 0
	fi
	i=` expr $i + 1 `
	len=` expr $len - 1 `
done

echo "It is a Palindrome String"
