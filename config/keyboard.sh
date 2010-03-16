bindkey -e

stty intr   ^C
stty eof    ^D
stty erase  ^\?
stty susp   ^Z
stty werase ^W

bindkey '\ew' kill-region

bindkey -s '\el' "ls\n"
bindkey -s '\e.' "..\n"
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

unsetopt flowcontrol
