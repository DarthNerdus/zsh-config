function pull() {
	local start="$(dirs -l)"
	local dir
	for dir in "$@"; do
		if [ -d /Users/jread/Developer/Open\ Source/$dir ]
		then
			echo "Pulling $dir"
			cd /Users/jread/Developer/Open\ Source/$dir
			git pull
		else
			echo $dir does not exist.
		fi
	done
	cd $start
}