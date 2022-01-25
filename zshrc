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

alias gs='git status'
alias gd='git diff'

alias tmux_clip='tmux save-buffer - | xclip -selection clipboard'

alias jest-debug='npx --node-arg=--inspect-brk jest --runInBand --watch'

export CLICOLOR=1

source $HOME/config/bash/z/z.sh

# hot scripts
export PATH=$HOME/config/scripts:$HOME/bin:$PATH
