echo "Enter two files"
read file1
read file2
if [ ! -e $file1 -o ! -e $file2 ];then
	echo "Either or both the files do not exist"
	exit
fi
echo "Finding patterns that starts with [A-l] and ends with o"
sort $file1 $file2|grep -i ^[A-L].\*o$|uniq
echo "Finding patterns that starts with [A-L] or ends with o"
sort $file1 $file2|grep -i "^[A-L]\|o$"|uniq
