function pull() {
	local start="$(dirs -l)"
	local dir
	for dir in "$@"; do
		if [ -d /Users/jread/Public/$dir ]
		then
			echo "Pulling $dir"
			cd /Users/jread/Public/$dir
			git pull
		else
			echo $dir does not exist.
		fi
	done
	cd $start
}