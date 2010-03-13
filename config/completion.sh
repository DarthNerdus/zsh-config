autoload -U incremental-complete-word
zle -N incremental-complete-word
bindkey "^Xi" incremental-complete-word ## C-x-i

setopt noautomenu
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

WORDCHARS=""

autoload -U compinit
compinit

zmodload -i zsh/complist

zstyle ':completion:*' list-colors ''

unsetopt MENU_COMPLETE
setopt AUTO_MENU

zstyle ':completion:*' tag-order '! users'

bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle ':completion:*:*:*:*:*' menu yes select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"
zstyle ':completion:*:*:(ssh|scp):*:*' hosts `sed 's/^\([^ ,]*\).*$/\1/' ~/.ssh/known_hosts`
