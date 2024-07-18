
if [[ -f ~/.bash_custom ]]; then
    source ~/.bash_custom
fi

# alias
alias e="vim"
alias ls="ls --color"
alias ll="ls -la"

# source fzf shell integrations
eval "$(fzf --bash)"

# enable vi mode
set -o vi

GIT_COMPLETION=/usr/share/bash-completion/completions/git
if [[ -f $GIT_COMPLETION ]]; then
    source $GIT_COMPLETION
fi

export EDITOR=vim

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

eval "$(zoxide init bash --cmd cd)"

