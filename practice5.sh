touch oitem.dat

if [ ! -e "item.dat" ];then
	touch item.dat
fi

item_code=1000
qty_sold=0
rate=0

echo "Do you want to enter records?"
echo "Press y for yes, and n no"
read ch

while [ "$ch" = 'y' ]
do
	item_code=` expr $item_code + 1 `

	echo "Enter the quantatity sold for $item_code"
	echo "(The value should be greater than 0)"
	read qty_sold

	if [ "$qty_sold" -le "0" ];then
		echo "Illegal value is inserted"
		echo "Enter the quantatity sold for $item_code"
		echo "(The value should be greater than 0)"
		read qty_sold
	fi

	echo "Enter the rate for $item_code"
	echo "(The value should be in the range 100 to 10000, exclusive)"
	read rate

	if [ "$qty_sold" -lt "100" -a "$qty_sold" -gt "10000" ];then
		echo "Illegal value is inserted"
		echo "Enter the rate for $item_code"
		echo "(The value should be in the range 100 to 10000, exclusive)"
		read rate
	fi

	echo "$item_code|$qty_sold|$rate" >> oitem.dat
	echo "Records insterted sucessfully"

	echo "Press y to enter more records, or press n to exit"
	read ch
done

IFS="|"

while read item_code qty_sold rate
do
	echo "\n"	
	echo "================================================================"
	echo "ITEM NO: $item_code"
	echo "QUANTITY SOLD: $qty_sold"
	echo "RATE: $rate"
	echo "================================================================"
	echo "\n"
done < "oitem.dat" >> "item.dat"

rm oitem.dat

cat item.dat
