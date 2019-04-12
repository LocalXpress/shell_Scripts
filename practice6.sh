touch file123.txt
touch file111.txt

add_a_user()
{
	printf "%s|%s|" $1 $2 >> file123.txt
	shift;shift;
	echo "$@" >> file123.txt
}

add_a_user "Swaroop_Acharjee0" "2ndAugust0" Coder Personal Teacher
add_a_user "Swaroop_Acharjee1" "2ndAugust1" Coder Personal Teacher
add_a_user "Swaroop_Acharjee2" "2ndAugust2" Coder Personal Teacher
add_a_user "Swaroop_Acharjee3" "2ndAugust3" Coder Personal Teacher
add_a_user "Swaroop_Acharje34" "2ndAugust4" Coder Personal Teacher

IFS="|"
while read name password remarks
do
	echo "\n"
	echo "<<<<<<<<<>>>>>>>>>>>"
	echo "NAME: $name"
	echo "PASSWORD: $password"
	echo "REMARKS: $remarks"
	echo "<<<<<<<<<>>>>>>>>>>>"
	echo "\n"
done < "file123.txt" >> "file111.txt"
