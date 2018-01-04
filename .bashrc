#.bashrc

# prompt color
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '

#aliases
alias ls='ls --color=auto -al'
alias ll='ls -al'
alias l='ls -CF'

HISTSIZE=50000

export LS_COLORS='di=01;36:'
export HISTCONTROL=ignoredups
