alias ls='ls -G --color=auto'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'

alias c1='cd ../'
alias c2='c1; c1'
alias c3='c2; c1'
alias c4='c3; c1'

alias sd='svn di'
alias ss='svn st'
alias ssie='ss --ignore-externals | grep "^[^X]"'
alias spse='svn pe svn:externals'
alias spsi='svn pe svn:ignore'

alias opxdev='ssh deploy@opxdev'
alias devoe='ssh deploy@devoe01.lan.flt'
alias stgdeploy='ssh deploy@rshbgdeploy1'
