touch file1.txt
touch file2.txt
truncate -s 0 file1.txt
truncate -s 0 file2.txt

echo "Starting with letters in the range [A-L] AND ending with S, case insensitive-" >> file1.txt
grep --color -n -i "^[A-L].*s$" first.txt >> file1.txt
echo "Starting with letters in the range [A-L] OR ending with S, case insensitive-" >> file2.txt
grep --color -n -i "^[A-L]\|s$" first.txt >> file2.txt

cat file1.txt
cat file2.txt
