DIRS=`ls -l | egrep '^d' | awk '{print $9}'`

touch utt2spk

for dir in $DIRS; do	
	names=`ls "$dir"`
	for name in $names; do
		str=$dir
		IFS='.' read -r -a num <<< "$name"
		str+="_${num[0]} $dir"
		echo $str >> utt2spk
	done
done