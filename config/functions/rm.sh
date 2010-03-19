function rm() {
  local dir
  for dir in "$@"; do
    # ignore any arguments
    if [[ "$dir" = -* ]]; then :
    else
		if [ -e $dir ]
		then
      	local dst=${dir##*/}
	      # append the time if necessary
	      while [ -e ~/.Trash/"$dst" ]; do
	        dst="$dst "$(date +%H-%M-%S)
	      done
	      mv "$dir" ~/.Trash/"$dst"
		else
			echo $dir does not exist!
		fi
    fi
  done
}