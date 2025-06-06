PATH=$PATH:/home/khushangsingla/.local/bin
alias clip='xclip -selection c'
alias cseserver='ssh khushangsingla@mars.cse.iitb.ac.in'
alias vim='nvim'
alias vi='nvim'
alias sl='ls'
alias config-files-git='git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME'
alias open='xdg-open'
alias setdisp='export DISPLAY=:0'
alias f='fuck'
# Best one
PS1='\[\033[0;31m\]\342\224\214\342\224\200$([[ $? != 0 ]] && echo "[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200")[\[\033[01;96m\]\u\[\033[01;31m\]@\[\033[01;96m\]\h\[\033[0;31m\]]\342\224\200[\[\033[01;93m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\$\[\e[0m\]'

# For keeping a constant text TEXT1 and TEXT2
# PS1="\[\033[0;31m\]\342\224\214\342\224\200[\[\033[01;96m\]TEXT1\[\033[01;31m\]\[\033[01;96m\]\[\033[0;31m\]]\342\224\200[\[\033[01;93m\]TEXT2\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]$\[\e[0m\]"

# For keeping only yellow $
# PS1="\[\e[01;33m\]$ \[\e[0m\]"

# Python virtualenvironment related environment variables
export PWNDBG_VENV_PATH=/home/khushangsingla/.pwndbg_pyvenv

# Add node and npm
# PATH=$PATH:/home/khushangsingla/Downloads/Setups_Used/nodejs/node-v18.17.1-linux-x64/bin
# . "$HOME/.cargo/env"

eval "$(thefuck --alias)"

eval "$(direnv hook bash)"
# default .envrc for C projects
# export PATH=/usr/lib/ccache/bin:$PATH
# export CCACHE_DIR=$PWD/.ccache
# export CSCOPE_DB=$PWD/cscope.out
# export VIRTUAL_ENV=<name>

show_virtual_env() {
  if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}
export -f show_virtual_env
PS1='$(show_virtual_env)'$PS1
