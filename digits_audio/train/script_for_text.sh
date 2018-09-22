DIRS=`ls -l | egrep '^d' | awk '{print $9}'`

arr[0]="zero"
arr[1]="one"
arr[2]="two"
arr[3]="three"
arr[4]="four"
arr[5]="five"
arr[6]="six"
arr[7]="seven"
arr[8]="eight"
arr[9]="nine"

touch text

for dir in $DIRS; do	
	names=`ls "$dir"`
	for name in $names; do
		str=$dir
		IFS='.' read -r -a num <<< "$name"
		str+="_${num[0]} ${arr[${num[0]}]}"
		echo $str >> text
	done
done