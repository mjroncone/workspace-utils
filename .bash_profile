# Note: you can add --color=always to the default command but this slows
# the command down *significantly*
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Make docker-compose based development a little more friendly.
alias dcr='docker-compose run --rm'
