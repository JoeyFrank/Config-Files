# Setting PATH for Py:thon 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

PROMPT_DIRTRIM=2

source ~/Scripts/git-completion.bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

open_file_dir() {
    if [[ -d $1 ]]; then
        cd $1
    elif [[ -f $1 ]]; then
        vim $1
    else
        cd
    fi
}

alias la='ls -alFG'
alias ls='ls -lFG'
alias c='clear'
alias b='cd ..'
alias lsd="ls -lad */"
alias st="speedtest-cli"
alias go="open_file_dir"
alias cls="clear"

bind "TAB:menu-complete"

PS1='\e[32m${USER%@*}@\h \e[35m$(parse_git_branch) \e[93m\w\e[m\n> '
export PS1

LS_COLORS=$LS_COLORS:'di=0;34:'
export LS_COLORS
