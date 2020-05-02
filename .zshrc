export PS1="%n@%~$ "

# default="*?_-.[]~=/&;!#$%^(){}<>", remove '/' from it
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi

export GOPATH=$HOME/go
export GITHUBPATH=$HOME/Github

# Make Ctrl+U clears the line before the current cursor.
# In zsh, Ctrl+U clears the entire line by defualt.
# https://stackoverflow.com/questions/3483604/which-shortcut-in-zsh-does-the-same-as-ctrl-u-in-bash/3483679#3483679
bindkey \^U backward-kill-line

# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"

