powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /home/julia/anna/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

set -o vi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/julia/anna/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/julia/anna/etc/profile.d/conda.sh" ]; then
        . "/home/julia/anna/etc/profile.d/conda.sh"
    else
        export PATH="/home/julia/anna/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias py=/usr/bin/python
# export PATH=$PATH:'/home/julia/.local/bin'

# torrent
alias tsm="transmission-remote"

# download websites generic algorithm
alias download='wget -r -l0 -p -k -np -E -nv -nc -c --progress=dot'
