#! /bin/sh

# Usage : ./csvToScript.sh "source.csv" "desc.sh"

awk -F\; '{print "mv '\''" $1 "'\'' '\''" $2 "'\''"}' "$1" > "$2"
chmod +x "$2"
