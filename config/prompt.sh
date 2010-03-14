autoload branch-name
setopt prompt_subst

export PS1='%n@%m:%~`branch-name`%# '
