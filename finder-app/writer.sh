filedir=$1
writestr=$2

if ! [ $# -eq 2 ]
then echo "Enter right number of parameters. Exactly 2."
exit 1
fi 

mkdir -p "$(dirname "$filedir")"

echo "$writestr" > "$filedir"

if ! [ $? -eq 0 ]
then echo "Could not create directry."
exit 1;
fi

echo "Successfully added $writestr to $filedir ."
