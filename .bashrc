[[ $- != *i* ]] && return # If not running interactively, don't do anything

export VISUAL=nvim

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias fd='fdfind'
alias grep='grep --color=always'
alias gg='git log --oneline --decorate --all --graph'
alias kitty='kitty --start-as fullscreen'
eval "$(starship init bash)"

