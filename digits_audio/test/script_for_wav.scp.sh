DIRS=`ls -l | egrep '^d' | awk '{print $9}'`

touch wav.scp

for dir in $DIRS; do	
	names=`ls "$dir"`
	for name in $names; do
		pwd=`pwd`
		pwd="$pwd/$dir/$name"		
		str=$dir
		IFS='.' read -r -a num <<< "$name"
		str+="_${num[0]} $pwd"
		echo $str >> wav.scp
	done
done