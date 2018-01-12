# termial line prefix
export PS1="\W \u\$ "

# enable color display
export CLICOLOR=1

# disable homebrew auto update
export HOMEBREW_NO_AUTO_UPDATE=1

# jenv init
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# alias
alias ll='ls -l'
alias la='ls -la'
alias tree='tree -C'
alias http='python -m SimpleHTTPServer 8080'

# bash completion
for bcfile in /usr/local/etc/bash_completion.d/* ; do
  . $bcfile
done
