# bash uses .bashrc if called from ssh
# https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html
test "${-#*i}" = "$-" && return

# Load POSIX personalization

. "$ENV"

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
# NOTE: MacOS do not update Bash from 3 to 4 so I cannot use this unfortunately
# shopt -s globstar

# add completition to things that I use all time
complete -c sudo man k
complete -acb -A function type t

# go back to last directory
# alias -=... does not work in new repositories (it has options) while -() and
# alias -- -=... does not work in old ones, like dash

alias -- -="cd -"

# Add fzf support
if command -v fzf >/dev/null 2>&1; then
  _editline_fzf() {
    READLINE_LINE="$(history | cut -c 8- | fzf --tac --query="$READLINE_LINE")"
    READLINE_POINT="${#READLINE_LINE}"
  }
  bind -x '"\C-R": _editline_fzf'
fi
