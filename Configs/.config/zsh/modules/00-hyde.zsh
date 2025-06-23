# Sources vital global environment variables and configurations // Users are encouraged to use ./user.zsh for customization
# shellcheck disable=SC1091
if ! . "$ZDOTDIR/modules/hyde/env.zsh"; then
    echo "Error: Could not source $ZDOTDIR/modules/hyde/env.zsh"
    return 1
fi

if [ -t 1 ] && [ -f "$ZDOTDIR/modules/hyde/term.zsh" ]; then
    . "$ZDOTDIR/modules/hyde/term.zsh" || echo "Error: Could not source $ZDOTDIR/modules/hyde/term.zsh"
fi
