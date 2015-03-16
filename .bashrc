function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv) "
}

# disable the default virtualenv prompt change
export VIRTUAL_ENV_DISABLE_PROMPT=1
export GREP_OPTIONS='--color=auto'
VENV="\$(virtualenv_info)";

export PS1="\[\e[01;31m\]\h\[\e[0m\] \[\e[01;44m\]${VENV}\[\e[00;33m\]➜  \[\e[00;36m\]\w\[\e[0m\] "

alias ls='ls --color'

export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="[%F %T] "

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH=/usr/local/bin:$PATH

# Git branch in prompt.
# Ref: http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac/
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
