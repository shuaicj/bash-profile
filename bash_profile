# termial line prefix
export PS1="\W \u\$ "

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
for bcfile in /usr/local/etc/bash_completion.d/* ; do
  . $bcfile
done
