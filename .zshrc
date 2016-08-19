# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mhupp/.zshrc'

autoload -Uz compinit
compinit
# End of lines addedo  by compinstall

# Color
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Cycle through history based on characters already typed on the line
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Aliases
alias ls="ls --color -F"

# Promt
autoload -Uz promptinit
promptinit
prompt suse

# ignore duplication in command history
setopt hist_ignore_dups
