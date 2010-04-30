function clone() {
	local start="$(dirs -l)"
	cd /Users/jread/Developer/Open\ Source
	git clone $@
	cd "$start"
}
