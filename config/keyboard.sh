bindkey -e

stty intr   ^C
stty eof    ^D
stty erase  ^\?
stty susp   ^Z
stty werase ^W

bindkey '\ew' kill-region

bindkey -s '\el' "ls\n"
bindkey -s '\e.' "..\n"

unsetopt flowcontrol
