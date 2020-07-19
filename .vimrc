set number
set paste
" Mosue select without line numbers
set mouse+=r
set showcmd
set splitright

set cursorline
set colorcolumn=80

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
nnoremap ,m :NERDTreeToggle<CR>
" Find the current file in tree
nnoremap ,n :NERDTreeFind<CR>

autocmd VimEnter * NERDTree

" https://github.com/fatih/vim-go/issues/494#issuecomment-124556989
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" Automatically run goimport on save
let g:go_fmt_command = "goimports"
