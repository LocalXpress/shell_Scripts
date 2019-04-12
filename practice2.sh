str="Hello World"
echo $str
len=` expr length "$str" `
echo $len
in=` expr index "$str" o `
echo $in
out=` expr substr "$str" 2 9 `
echo $out
k=` echo "$str" | cut -c "0" `
echo $k

