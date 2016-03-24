#i/bin/bash

echo "What file type are you looking for (i.e text = txt)"
read type

echo "What are you looking for in the file"
read term

file=$( find /Users/ -name "*.$type"  -exec grep -i -l -R $term {} \; )
line=$( find /Users/ -name "*.$type" -exec grep -i -R $term {} \; )
echo ----------------------------------
echo Found the term in the file -- $file
echo ——————————————————————————————————
echo Containing the phrase -- $line
echo ----------------------------------
if [ $type == "txt" ] || [ $type == "sh" ]; then
	echo Would you like to open the file in TextEditor?
	read answer
	if [ $answer == "yes" ] || [ $answer == "Yes" ]; then
		open -e $file
	else
		echo Ok, all finished then! 
	fi 
else
	echo All finished!
fi
