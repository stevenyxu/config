# mad aliases
alias l='ls'
alias ll='ls -l'
alias la='ls -la'

alias c1='cd ../'
alias c2='c1; c1'
alias c3='c2; c1'
alias c4='c3; c1'
alias c5='c4; c1'
alias c6='c5; c1'

alias sd='svn di'
alias ss='svn st'
alias suie='svn up --ignore-externals'
alias ssie='ss --ignore-externals | grep "^[^X]"'
alias spse='svn pe svn:externals'
alias spsi='svn pe svn:ignore'
alias sdsm='svn pd svn:mime-type'

alias uatt='find . | xargs dos2unix'

alias opxdev='ssh deploy@opxdev'
alias sxuopxdev='ssh sxu@opxdev'
alias devoe='ssh deploy@devoe01.lan.flt'
alias sxudevoe='ssh sxu@devoe01.lan.flt'
alias stgdeploy='ssh deploy@rshbgdeploy1'
alias sxudevfms='ssh sxu@devfms00.lan.flt'
alias sxudevrmsvc='ssh sxu@devrmsvc00.lan.flt'
alias devrmsvc='ssh deploy@devrmsvc00.lan.flt'

alias tf='tail -f'
alias tfld='tf log/development.log'
alias tflt='tf log/test.log'
alias tflp='tf log/production.log'

alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'

alias cl='curl -x localhost:80'

alias sai='sudo apt-get install'

alias be='bundle exec'
alias berc='bundle exec rails c'
alias bc='bundle check'
alias gl='gem list'

alias ru='rvm use'
alias rgu='rvm gemset use'

alias g='git'

alias s='svn'

# hot scripts
export PATH=$HOME/config/scripts:$PATH
alias ttr='touch_tmp_restart'
