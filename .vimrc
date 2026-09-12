" ----------------------------------------------------------- "
" ======== Settings ======================= 
set nocompatible                " be iMproved, required
filetype off                    " required
set scrolloff=2                 " Upper/lower boundary for scroll
set wildmenu                    " Help See files when searching
syntax on                       " Enable Syntax Highlighting

set tabstop=2                   " Handle tab, as 2 spaces
set shiftwidth=2
set expandtab                   " Convert tabs to spaces

" Useful for highlighting occurrences of variables under the cursor"
set hlsearch

" Add line numbers "
set number

"Enable true colors"
"set termguicolors"

" Set the fold method at syntax level
" zM/zm fold, and  zr/zR unfold
set foldmethod=indent
" Set high enough fold level to make sure everything is expanded.
set foldlevelstart=99


" Make a bar so I know when I am past 80 characters"
"highlight ColorColumn ctermbg=red
set colorcolumn=120

" set little markers for tabs and spaces "
" exec set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~ "
" set list"

" Automatically indent"
" set autoindent

" Occassionally syntax highlighting gets messed up, so remap to F11
noremap <F8> <Esc>:syntax sync fromstart<CR>
inoremap <F8> <C-o>:syntax sync fromstart<CR>


" I put this in here so I don't have to hit escape all the time
inoremap jk <Esc>

" Perform spell checking with the built in spell checker "
" set spell spelllang=en_us"
nnoremap ,class :read $HOME/.vim/.class.txt<CR>V21j:s/classname/test/g

" Plugin 'tomasiser/vim-code-dark' "
"Set the theme for the editor colors"
set t_Co=256
set t_ut=
"colorscheme codedark"
"colorscheme zellner 
" ----------------------------------------------------------- "

packadd termdebug

"==========================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Context plugin
" https://github.com/wellle/context.vim
Bundle 'wellle/context.vim'

"call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"call plug#end()

" glsl syntax highlighting
Plugin 'tikhomirov/vim-glsl'
autocmd! BufNewFile,BufRead *.vert,*.frag set ft=glsl

" You complete me"
" Plugin 'ycm-core/YouCompleteMe'

" Nerdtree
Plugin 'preservim/nerdtree'

" Termdbg
Plugin 'epheien/termdbg'

" Tagbar
" https://stackoverflow.com/questions/14746426/list-all-functions-defined-in-a-file
nmap <F9> :TagbarToggle<CR>
Plugin 'majutsushi/tagbar'



" set statusline=%{tagbar#currenttag('%s','','f')}
set statusline=%<%f\ %h%m%r%=%{tagbar#currenttag('%s','','p')}%-.(%l,%c%V%)\ %P
"set statusline=%<%f\ %h%m%r%=%{tagbar#currenttag('%s\ ','','p')}%-.(%l,%c%V%)\ %P


"set tags=./tags;/,tags;/
set tags+=/home/mike/SDL3/SDL-main/include/SDL3/tags;/
set tags+=/home/mike/SDL3/SDL-main/src/tags;/



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" NERDTree configuration
nnoremap <F12> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
