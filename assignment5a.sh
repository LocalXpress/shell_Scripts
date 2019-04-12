#Get the current directory that you are working on
yourfilenames=`ls`
f=0
d=0

#CREATING TWO TEMPORARY FILE TO STORE THE NAMES
touch FILE.txt
touch DIRECTORY.txt

#iterate through the files and folders
for eachfile in $yourfilenames
do
   	if [ -f "$eachfile" ];then
		echo "$eachfile" >> FILE.txt
		f=`expr $f + 1`
	elif [ -d "$eachfile" ];then
		echo "$eachfile" >> DIRECTORY.txt
		d=`expr $d + 1`
	fi	
done

echo "Total numbers of files: $f"
echo "Total numbers of directories: $d"

echo "========================================="
echo "The names of the files in the directory: "
cat FILE.txt

echo "==========================================="
echo "The names of the folders in the directory: "
cat DIRECTORY.txt

rm FILE.txt
rm DIRECTORY.txt

