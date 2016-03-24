#i/bin/bash

echo "What file type are you looking for (i.e text = txt)"
read type

echo "What are you looking for in the file"
read term

list=$( find /Users/ -name "*.$type"  -exec grep -i $term {} \; )

echo $list

