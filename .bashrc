LANG=en_US.UTF-8

# tab completion case insensitivity
if [ ! -a ~/.inputrc ]; then 
    echo '$include /etc/inputrc' > ~/.inputrc           # defines things like [tab][tab], this way it wont be overridden
    echo 'set completion-ignore-case on' >> ~/.inputrc
fi

bind 'set match-hidden-files off' # keep hidden files hidden

# eviro vars
export PATH=~/.emacs.d/bin/:$PATH       ## dubious
export PATH=~/bin/:$PATH       ## dubious
export VISUAL=emacsclient;
export EDITOR=nvim;
export ALTERNATE_EDITOR=""
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export GOPATH=$HOME/.go

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history.
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend # append to the history file, don't overwrite it
shopt -s autocd     # change to named dir
shopt -s cdspell    # autocorrect cd misspellings
shopt -s dotglob
shopt -s expand_aliases
shopt -s checkwinsize  # update window size after command finishes


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# a list of greek letters for user prompt, it will give different letter every login
declare -a prompt_symb=("\u0394" "\u039b" "\u03a0" "\u03a3" "\u03a6" "\u03a8" "\u03a9" "\u03b1" "\u03b2" "\u03b3" "\u03bb" "\u03bc" "\u03c0" "\u03c3" "\u03c6" "\u03c8" "\u03c9")
declare prompt="${prompt_symb["$RANDOM % ${#prompt_symb[@]}"]}"
#echo -e "$prompt"

export PS1=$'\[\e[35m\]\s\[\e[m\] \[\e[35m\]:\[\e[m\] [\[\e[35m\]\d\[\e[m\] \[\e[35m\]\@\[\e[m\]] [\[\e[35m\]jobs: \j\[\e[m\]] \[\e[35m\]\u\[\e[m\] \[\e[35m\]on\[\e[m\] \[\e[35m\]\H\[\e[m\] \[\e[35m\]in\[\e[m\] \[\e[35m\]\w\[\e[m\] :'
export PS1=$PS1$'\n\[$(tput bold)\]'
export PS1=$PS1$(echo -e "$prompt")
export PS1=$PS1$' ->\[$(tput sgr0)\]  '

# add this to PS1 for branch name in shell
# \[\e[35m\]\]branch: \[\e[35m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\]
