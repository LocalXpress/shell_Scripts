#To the taking two numbers as input
echo "Enter Two Numbers: "
read num1
read num2

#Taking the operand as the input
echo "Enter the operand: "
read op

#switch case
case "$op" in
"+") r=`expr $num1 + $num2 `
;;
"-") r=`expr $num1 - $num2 `
;;
"*") r=`expr $num1 \* $num2 `
;;
"/") r=`expr $num1 / $num2 `
;; 
esac

echo "The result is: $r"

