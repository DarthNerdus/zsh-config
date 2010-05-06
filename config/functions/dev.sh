function dev() {
	local dir
	for dir in "$@"; do
		if [ -d ~/Developer/$dir ]
		then
			cd ~/Developer/$dir
		else
			echo $dir is not a private project.
		fi
	done
}

function devo() {
	local dir
	for dir in "$@"; do
		if [ -d ~/Developer/Open\ Source/$dir ]
		then
			cd ~/Developer/Open\ Source/$dir
		else
			echo $dir is not a public project.
		fi
	done
}