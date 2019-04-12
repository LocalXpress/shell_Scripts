ITEM_CODE=1000
QUANTITY_SOLD=0
RATE=0

ITEM_CODE=`expr ITEM_CODE + 1`
echo "Enter the Quantity sold: "
echo "Range greater than 0"
read QUANTITY_SOLD
echo "Enter the Rate: "
echo "Range greater than 100 and less than 1000"

