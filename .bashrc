# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nvim

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep --color=always'
alias gg='git log --oneline --decorate --all --graph'
alias vim=$VISUAL

eval "$(starship init bash)"

