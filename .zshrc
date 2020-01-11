export PS1="%n@%~$ "

# default="*?_-.[]~=/&;!#$%^(){}<>", remove '/' from it
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi
