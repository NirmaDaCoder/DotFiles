# Exports
export TERM="xterm-256color"
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'

# Enable colors and change prompt:
autoload -U colors && colors

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.config/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# ranger cd
rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -r "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"                                               
    fi
}

# Key bindings
bindkey -s '^o' 'rangercd\n' # ranger cd
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# theme/plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-auto-notify/auto-notify.plugin.zsh
source ~/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh

# smart suggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# shortened commands
alias ls="ls --color"
alias la="ls -lA"
alias ll="ls -l"
alias ..="cd .."
alias nv="nvim"

# Dict Paths
alias nirmal="cd /media/Nirmal"
alias indhu="cd /media/Indhumathi"
alias programing="cd /media/Programing"
alias xpartion="cd /media/xPartion"

# Applications Paths
export PATH=/home/nirmal/Applications/Godot/:$PATH

# syntax highlighting 
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
