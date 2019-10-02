" Add line numbers "
set number

" Enable Syntax Highlighting"
syntax on


"Set the theme for the editor colors"
highlight Normal guibg=black guifg=white
set background=dark
set t_Co=256
colorscheme ron

" Handle tabs "
set tabstop=4
set shiftwidth=4
set expandtab

" Useful for highlighting occurrences of variables under the cursor"
set hlsearch

" Make a bar so I know when I am past 80 characters"
highlight ColorColumn ctermbg=magenta
set colorcolumn=81

" set little markers for tabs and spaces "
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Automatically indent"
set autoindent

" Perform spell checking with the built in spell checker "
" set spell spelllang=en_us"
