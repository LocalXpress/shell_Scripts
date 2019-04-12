c=1000
ch=1
r=0
qt=0
touch oitem.dat
touch item.dat
# Writing to a temporary file named oitem.dat
while [ $ch -ne 0 ]
do
	c=$((c+1))	
   echo "enter quantity purchased for item $c"
   read qt
   echo "enter rate for item $c"
   read r
   if [ $r -lt 100 -o $r -gt 10000 ];then
	   echo "invalid rate entered. Please enter again"
	   read r
   elif [ "$qt" -eq "0" ]; then
   		echo "invalid quantity entered,please enter again"
   		read qt
   else
	   #Storing items with field seperator '|'
	   echo "$c|$qt|$r">>oitem.dat
	   echo "records entered successfully"
   fi
   echo "if you want to enter other records press any number greater than 0 else press 0"
   read cch
   ch=$cch
 done
 
#Storing the original value of IFS in oldIFS variable
oldIFS=$IFS
IFS="|"
#Read from oitem.dat and storing our formatted result using IFS in item.dat file
while read c q r
do
	echo "----------------------------------------------------------------------------------------------------------------------------"
	echo "item_code = $c"
	echo "qty_sold = $q"
	echo "rate = $r"
	echo "-----------------------------------------------------------------------------------------------------------------------------"
done<oitem.dat>item.dat
#Assigning the default value of IFS stored in oldIFS variable
IFS=$oldIFS
rm oitem.dat

