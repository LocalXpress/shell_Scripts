tmp_name=$(TMPDIR=$(dirname -- "$1") mktemp) &&
mv -f -- "$1" "$tmp_name" &&
mv -f -- "$2" "$1" &&
mv -f -- "$tmp_name" "$2"
rm -f -- "$tmp_name"
exit 0
