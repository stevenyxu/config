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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias u="cd ~/universe"
alias u2="cd ~/universe2"
alias u3="cd ~/universe3"

__git_files () {
    _wanted files expl 'local files' _files
}

alias gfdm="git fetch databricks master"
alias gcdm="git checkout databricks/master"
alias gpdm="git pull databricks master"

ddl () {
  scp -r devbox.databricks.com:$1 ~/Downloads/
}

dul () {
  scp $1 devbox.databricks.com:
}

ddlo () {
  ddl $1
  open ~/Downloads/$(basename $1)
}

gpo () {
  if [[ $(git rev-parse --abbrev-ref HEAD) == "HEAD" ]]; then
    git checkout -b stevenxu-db/$(date +%Y-%m-%d-%H-%M)
  fi
  # fork=$(git remote -v | grep origin -m 1 | grep -o ':[^/]*' | cut -c 2-)
  branch=$(git branch --show-current)
  git push -u origin "$branch"
  open "https://github.com/databricks/universe/compare/master...databricks:universe-dev:$branch?expand=1"
}

