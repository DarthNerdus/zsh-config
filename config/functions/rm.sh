function rm() {
  local path
  for path in "$@"; do
    # ignore any arguments
    if [[ "$path" = -* ]]; then :
    else
		if [ -e $path ]
		then
      	local dst=${path##*/}
	      # append the time if necessary
	      while [ -e ~/.Trash/"$dst" ]; do
	        dst="$dst "$(/bin/date +%H-%M-%S)
	      done
	      /bin/mv "$path" ~/.Trash/"$dst"
		else
			echo $path does not exist!
		fi
    fi
  done
}