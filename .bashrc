#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -Fali --color=auto'
PS1='[\u@\h \W]\$ '

alias youtube-dl-playlist='youtube-dl -o -4 "%(playlist_index)s-%(title)s.%(ext)s"'

export PATH=/home/theonlyonzz/.emacs.d/bin/:/home/theonlyonzz/CLI_programs/:$PATH
export EDITOR=vim
export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# Appearance
#neofetch --ascii_distro Kali
neofetch --ascii_distro Arch --ascii_colors 1
~/.config/_scripts/neofetch_quotes.py
## Oh My Posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/clean-detailed.omp.json)"
