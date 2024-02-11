echo "Hello World"

filedir=$1
searchstr=$2

if ! [ $# -eq 2 ]
then echo "Enter right number of parameters. Exactly 2."
exit 1
fi 

if ! [ -d "$filesdir" ]
then echo "The directry path 1 entered is not valid."
exit 1;
fi

num_files = $(find "$filesdir" -type f)
num_matches = $(grep -r "$searchstr")

echo "The number of files are $num_files and the number of matching lines are $num_matches"
