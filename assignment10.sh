echo "Finding patterns that starts with A-L or ends with s"
grep -i "^[A-L]\|s$"  "$1"

echo "Finding patterns that starts with A-L and ends with s"
grep -i "^[A-L].\*s$" "$1"

