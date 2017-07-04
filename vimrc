" most of the configuration stuff from https://statico.github.io/vim.html

" Force Vim to display 256 colors on supported terminal types
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" Pathogen first for good plugin management
" execute pathogen#infect()
" filetype plugin indent on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'blueshirts/darcula'

" misc / don't know
Plugin 'StanAngeloff/php.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'alunny/pegjs-vim'
Plugin 'ap/vim-css-color'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'docunext/closetag.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json'
Plugin 'ervandew/supertab'
Plugin 'groenewege/vim-less'
Plugin 'junegunn/goyo.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'lesliev/vim-inform7'
Plugin 'majutsushi/tagbar'
Plugin 'mtscout6/vim-cjsx'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'slm-lang/vim-slm'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'vim-scripts/oceandeep'
Plugin 'wavded/vim-stylus'
Plugin 'wizicer/vim-jison'
" Plugins I added after this very long list of stuff
Plugin 'mhinz/vim-startify'
Plugin 'takac/vim-hardtime'
Plugin 'ryanoasis/vim-devicons' " Load after : NERDTree | vim-airline | CtrlP | powerline | Denite | unite | lightline.vim | vim-startify | vimfiler | flagship


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
" End of Vundle plugin configuration

set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

syntax enable
" colorscheme zenburn
colorscheme darcula

set ruler

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" The one single thing I could never stand about Vim’s default movements, however, is how j and k move around wrapped lines. By default they move you one line down and ups but on a linewise basis, which is annoying. If I hit j I would expect the cursor to move down a single row on the screen, just like every other text editing area in the world. The following does just that:
:nmap j gj
:nmap k gk

:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

" A common operation is to search for text, so it makes sense to have some
" sane defaults. The incsearch option highlights as you type an expression
" (a.k.a. “Emacs style”), and ignorecase plus smartcase make searches
" case-insensitive except when you include upper-case characters (so /foo
" matches FOO and fOo, but /FOO only matches the former). hlsearch is a useful
" option which highlights the current search, but the highlight can become
" annoying so it makes sense to have a key to clear the highlight when you no
" longer need it:
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

" Return to previous buffer
:nmap <C-e> :e#<CR>
" Cycle between buffers
:nmap <C-n> :bnext<CR>
:nmap <C-b> :bprev<CR>

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" TODO configure Ctrl-P


" NERDTree settings
:nmap \e :NERDTreeToggle<CR>

" Enable HardTimeOn
let g:hardtime_default_on = 1
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]
let g:hardtime_ignore_quickfix = 1
" let g:hardtime_allow_different_key = 1

" Font configuration
set encoding=utf8
" The following line is only required when not using a terminal for vim
" set guifont=FuraCode\ Nerd\ Font:h11
" Required if using airline
" let g:airline_powerline_fonts = 1

" Powerline configuration
set laststatus=2


