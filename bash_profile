# termial line prefix
export PS1="\W \u\$ "

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

# alias
alias ll='ls -la'
alias tree='tree -C'
alias httpy='python -m SimpleHTTPServer 8080'
alias proxyon="export ALL_PROXY=socks5://127.0.0.1:1080"
alias proxyoff="unset ALL_PROXY"

# bash completion
# brew install bash-completion
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

