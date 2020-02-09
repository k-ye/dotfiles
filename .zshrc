export PS1="%n@%~$ "

# default="*?_-.[]~=/&;!#$%^(){}<>", remove '/' from it
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi

export GITHUBPATH="$HOME/Github"

# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

