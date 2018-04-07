# bashrc
echo ".bashrc loaded"

# for rbenv
# .bash_profileはlinuxのターミナル起動時には読まれないため.bashrcに記載する
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for vim jp
export LANG='ja_JP.UTF-8'

# prompt color
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[93m\]\w\[\033[00m\]\n\$ '

# aliases
alias ls='ls --color=auto -al'
alias ll='ls -al'
alias l='ls -CF'
alias sd='shutdown -P now'

HISTSIZE=50000

export LS_COLORS='di=01;36:'
export HISTCONTROL=ignoredups

# disable touchpad
xinput disable 11

# disable stop terminal output
stty stop undef
