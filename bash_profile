# the dir of this file
DIR="$( dirname $( readlink "${BASH_SOURCE[0]}" ) )"

# set lang
export LANG=C

# termial line prefix
export PS1="\[\e[0;33m\]\u \[\e[0;36m\]\w \[\e[1;31m\]> \[\e[0m\]"

# add current dir in iTerm2 tab title
if [ "$ITERM_SESSION_ID" ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# enable color display
export CLICOLOR=1

# disable homebrew auto update
export HOMEBREW_NO_AUTO_UPDATE=1

# local sbin
export PATH="/usr/local/sbin:$PATH"

# jenv init
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# MacPorts path
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# alias
alias ll='ls -la'
alias tree='tree -C'
alias httpy='python -m SimpleHTTPServer 8080'
alias sson="export ALL_PROXY=socks5://127.0.0.1:1080"
alias ssoff="unset ALL_PROXY"
alias k="kubectl --kubeconfig=/Users/shuai/.kube/config.rdb -n fws-testing-1"
alias h="helm --kubeconfig=/Users/shuai/.kube/config.rdb -n fws-testing-1"

# proxy
if [ -f $DIR/bash_proxy ]; then
    . $DIR/bash_proxy
fi

# bash completion
# brew install bash-completion
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

