# Set zsh's prompt form.
PROMPT='%B%F{198}%~ %#%f%b '

# Homebrew completion configuration.
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Add zsh plugins.
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable fzf.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable gpg authentication.
export GPG_TTY=$(tty)

# Set proxy in cli.
export http_proxy=http:/localhost:4780
export https_proxy=http://localhost:4780
