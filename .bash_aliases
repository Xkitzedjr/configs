# A contaiment file for all my aliases

# file browsing
alias ls='exa -lh --color=always --group-directories-first'
alias la='exa -lah --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias tree="exa -T --level=3"
alias l.='exa -a | egrep "^\."'
alias dirs='dirs -v'

# pacman
alias update='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist&& sudo pacman -Syyu'
alias p='sudo pacman'
alias unlock='sudo rm /var/lib/pacman/db.lc'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# pacman mirros
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# confirm before overwrite
alias cp="cp -iv"
alias mv='mv -i'
alias rm='rm -i'

# text editors
alias vi='nvim'
alias svi='sudo nvim -S /home/chris/.config/nvim/init.vim'
alias emacs='emacsclient -c'
alias em='emacsclient -nw'

# handy flags
alias cal='cal -3m'
alias df='df -h'
alias du='du -hc'
alias free='free -m'
alias make='make -j12'
alias mkdir='mkdir -pv'
alias ccat='highlight --out-format=ansi'
alias bat='bat -f'

# navigation
alias ..='cd ..'
alias doc='cd ~/Documents'
alias des='cd ~/Desktop'
alias pic='cd ~/Pictures'
alias down='cd ~/Downloads'
alias config='cd ~/.config'
alias hollywood="cd $HOME/Documents/personal_projects/hollywood"
alias moc="mocp -M ~/.config/moc"

# archival
alias mktar='tar -cvf'
alias untar='tar -xvf'

# often used shortcuts
alias xup="xrdb $HOME/.Xdefaults"
alias bashup="source $HOME/.bashrc"
alias bup="source $HOME/.bashrc"
alias aliases="vi $HOME/.bash_aliases"
alias als="vi $HOME/.bash_aliases"
# alias getmusic='youtube-dl -xwq -o "~/Music/%(title)s.%(ext)s"' youtube-dl was getting throttled
alias getmusicv='yt-dlp -xw -o "~/Music/%(title)s.%(ext)s"'
alias clipshot="scrot -s -f '%Y-%m-%d_%Hh-%Mm-%Ss.png' -e 'mv \$n ~/Pictures/screenShot/'"
alias start="startx ~/.xinitrc"
alias list-fonts="fc-list -b | grep family: | bat"
