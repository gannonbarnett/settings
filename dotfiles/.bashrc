[ -z "$PS1" ] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='$(echo $(dirname \w)|sed -e "s;\(/.\)[^/]*;\1;g")/$(basename \w)\e[0;34;1m$(parse_git_branch)\e[m$ '

export force_color_prompt=yes

. "$HOME/.cargo/env"

# Alias for nice quick git log
alias gl='git log --pretty=format:"%h - %an, %ar : %s"'
