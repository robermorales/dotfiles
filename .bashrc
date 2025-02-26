# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep --color=always'

export VISUAL=nvim
# export BROWSER=firefox
alias gg='git log --oneline --decorate --all --graph'

eval "$(starship init bash)"

