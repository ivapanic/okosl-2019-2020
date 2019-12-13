#/bin/bash

cd downloads
other_dir="../razonoda"
for f in * 
do
	if [[ $f == *_* ]] 
	then
		name="${f%%_*}"
		if [ -d "../$name" ] 
		then
			mv "$f" "../$name/$f"
		else
			mkdir "../$name"
			mv "$f" "../$name/$f" 
		fi
	else
		if [ -d "$other_dir" ]
		then
			mv "$f" "$other_dir/$f"
		else
			mkdir "$other_dir"
			mv "$f" "$other_dir/$f"
		fi
	fi
done

cd "$other_dir"
for f in *
do
	if [[ $f == *.pdf || $f == *.epub ]]
	then
		name="knjige"
	elif [[ $f == *.jpg || $f == *.jpeg ]]
	then
		name="slike"
	elif [[ $f == *.mp3 ]]
	then
		name="muzika"
	fi
	if [ -d "../$name" ]
	then
		mv "$f" "../$name/$f"
	else
		mkdir "../$name"
		mv "$f" "../$name/$f"
	fi
done		
		
