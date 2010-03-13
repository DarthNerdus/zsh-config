autoload git-branch-name
setopt prompt_subst

export PS1='%n@%m:%~`git-branch-name`%# '
