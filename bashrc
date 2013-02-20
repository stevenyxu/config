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
alias sst='svn st'
alias suie='svn up --ignore-externals'
alias ssie='sst --ignore-externals | grep "^[^X]"'
alias spse='svn pe svn:externals'
alias spsi='svn pe svn:ignore'
alias sdsm='svn pd svn:mime-type'
alias svn_rm_missing='ssie | grep ^! | sed 's/^[^a-z]*//' | xargs svn rm'
alias svn_add_unknown='ssie | grep ^? | sed 's/^[^a-z]*//' | xargs svn add'
alias rak='NOEXEC_DISABLE=1 rak'

alias ss='sudo su'

alias uatt='find . -type f | xargs dos2unix'

alias sxudevoe='ssh sxu@devoe01.lan.flt'
alias sxudevlcp='ssh sxu@devlcp00.lan.flt'
alias sxudevfms00='ssh sxu@devfms00.lan.flt'
alias sxudevfms01='ssh sxu@devfms01.lan.flt'
alias sxudevrmsvc='ssh sxu@devrmsvc00.lan.flt'
alias sxudevejabberd0='ssh sxu@devejabberd0.lan.flt'
alias sxudevejabberd1='ssh sxu@devejabberd1.lan.flt'
alias sxudevlcp01='ssh sxu@devlcp01.lan.flt'
alias sxuopxdev='ssh sxu@opxdev'
alias opxdev='ssh deploy@opxdev'
alias devoe='ssh deploy@devoe01.lan.flt'
alias devlcp01='ssh deploy@devlcp01.lan.flt'
alias rshbgdeploy='ssh deploy@rshbgdeploy1'
alias devrmsvc='ssh deploy@devrmsvc00.lan.flt'
alias sxustgrmsvc='ssh sxu@stgrmsvc00.lan.flt'
alias sxustglcp='ssh sxu@stglcp00.lan.flt'
alias stgrmsvc='ssh deploy@stgrmsvc00.lan.flt'
alias stglcp='ssh deploy@stglcp00.lan.flt'
alias stgdeploy='ssh deploy@stgdeploy1.lan.flt'
alias stgoe000='ssh deploy@stgoe000.lan.flt'
alias stgoe001='ssh deploy@stgoe001.lan.flt'
alias stgoe002='ssh deploy@stgoe002.lan.flt'
alias stgoe003='ssh deploy@stgoe003.lan.flt'

alias cd_ejabberd_log='cd /usr/local/var/log/ejabberd'
alias cd_ejabberd_etc='cd /usr/local/etc/ejabberd'

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
alias sup='svn_up_parallel'

set -o vi
