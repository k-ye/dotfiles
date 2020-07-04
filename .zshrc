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

# clang 11.0.3 (clang-1103.0.32.59) shipped after XCode 11.4 doesn't play well with Taichi LLVM bitcode,
# therefore I have to pin clang at clang-1100.0.33.17 (shipped in XCode 11.3.1) when working on Taichi.
alias "xccmd1131=sudo xcode-select --switch /Applications/Xcode_11.3.1.app/Contents/Developer"
alias "xccmdhead=sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer"

eval "$(rbenv init -)"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
# export PATH="$GITHUBPATH/depot_tools:$PATH"
