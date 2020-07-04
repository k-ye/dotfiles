set number
set paste
" Mosue select without line numbers
set mouse+=r
set showcmd
set splitright

set cursorline

syntax on

hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'preservim/nerdtree'
call plug#end()

" NERDTree plugin specific commands
nnoremap <C-g> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree

