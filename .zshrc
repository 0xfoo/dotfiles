export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# include zsh completions
fpath=(~/.zsh/completion $fpath)

# antigen settings
source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen apply

# Setup for go
export PATH=$PATH:/usr/local/go/bin  # go
export GOPATH=$HOME/src/go           # GOPATH
export PATH=$PATH:$GOPATH/bin        # include go bin directory
export PATH=$PATH:$HOME/.local/bin   # scripts installed via pip
export PATH=$PATH:$HOME/bin          # leiningen

export ANDROID_HOME=/opt/android

# Setup for pythons virtual environments
export VIRTUALENV_PYTHON=`which python3`
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR=vim

# shortcuts
alias zshconfig="$EDITOR $HOME/.zshrc"
alias vimconfig="$EDITOR $HOME/.vimrc"

alias install="sudo apt install"
alias remove="sudo apt remove"
alias update="sudo apt update"
alias upgrade="sudo apt update && sudo apt upgrade"
alias dupgrade="sudo apt dist-upgrade && sudo apt autoremove"
alias lsd="ls -d -- */"

# Base16 Shell, see https://github.com/chriskempson/base16-shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_monokai
