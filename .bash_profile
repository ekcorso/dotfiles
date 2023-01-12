eval "$(starship init bash)"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

unset MAILCHECK

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi

eval "$(direnv hook bash)"

# Set alias for dotfiles git repo
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
