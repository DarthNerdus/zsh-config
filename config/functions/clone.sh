function clone() {
	local start="$(dirs -l)"
	cd /Users/jread/Public
	git clone $@
	cd "$start"
}
