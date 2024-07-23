
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

GIT_PROMPT=~/git-prompt.sh
if [[ ! -f  $GIT_PROMPT ]]; then
    echo "Downloading git-prompt.sh"
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh  -o $GIT_PROMPT
fi
source $GIT_PROMPT

GIT_COMPLETION=~/git-completion.bash
if [[ ! -f  $GIT_COMPLETION ]]; then
    echo "Downloading git-completion.bash"
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $GIT_COMPLETION
fi
source $GIT_COMPLETION
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\W$(__git_ps1 " (%s)")\$ '

export EDITOR=vim

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

eval "$(zoxide init bash --cmd cd)"

