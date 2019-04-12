touch store.txt
grep --color -n  "^[A-L].*s$"  first.txt >> store.txt

cat store.txt

rm store.txt
