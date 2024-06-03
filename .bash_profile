# Configure prompt and theme
export SHELL="/opt/homebrew/bin/bash"
eval "$(starship init bash)"

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

unset MAILCHECK

# Set the PATH (including putting ruby first)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/.pyenv/shims/pip"
export PATH="/usr/local/lib/ruby/gems/3.2.0/bin:/usr/local/Cellar/ruby/3.2.0/bin:$PATH"

#
# Pyenv
# eval "$(pyenv init --path)"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi

# Environment 
eval "$(direnv hook bash)"

# Aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ddd="rm -rf ~/Library/Developer/Xcode/DerivedData"

# Add .ssh key to keychain
ssh-add --apple-use-keychain ~/.ssh/id_rsa


