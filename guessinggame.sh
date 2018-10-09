echo "Guess the Number of files in the current directory"

function func {
	echo "How many files are in the current directory"
	read ans
    files=$(ls -1 | wc -l)
}

func

while [[ $ans -ne $files ]]
do
	if [[ $ans -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	func
done

echo "Bravo! This is a correct answer"

echo "---" && ls -ltr
