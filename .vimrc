set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


" ----------------------------------------------------------- "
Plugin 'tomasiser/vim-code-dark'
"Set the theme for the editor colors"
set t_Co=256
set t_ut=
colorscheme codedark

"Fuzzy file finder when you do :e"
"cd to ~/.vim"
"git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim"
set runtimepath^=~/.vim/bundle/ctrlp.vim
":helptags ~/.vim/bundle/ctrlp.vim/doc"

" ----------------------------------------------------------- "

" Add line numbers "
set number

"Enable true colors"
set termguicolors

" Enable Syntax Highlighting"
syntax on

" Handle tabs "
set tabstop=4
set shiftwidth=4
set expandtab

" Useful for highlighting occurrences of variables under the cursor"
set hlsearch

" Make a bar so I know when I am past 80 characters"
highlight ColorColumn ctermbg=red
set colorcolumn=81

" set little markers for tabs and spaces "
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Automatically indent"
set autoindent

" Perform spell checking with the built in spell checker "
" set spell spelllang=en_us"
