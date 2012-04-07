export PATH=/usr/local/bin:$PATH
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias ll='ls -l'
alias st='/Applications/Sublime\ Text\ 2.app/Contents/Sublime\ Text\ 2 &'
source /usr/local/bin/virtualenvwrapper.sh
set $EDITOR=vim
set $NODE_PATH=/usr/local/lib/node_modules

function parse_git_dirty {
      [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
      git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
