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


call plug#begin('~/.vim/plugged')

" colors
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'blueshirts/darcula'

" misc / don't know
Plug 'StanAngeloff/php.vim'
Plug 'airblade/vim-gitgutter'
Plug 'alunny/pegjs-vim'
Plug 'ap/vim-css-color'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'docunext/closetag.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'groenewege/vim-less'
Plug 'junegunn/goyo.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'lesliev/vim-inform7'
Plug 'majutsushi/tagbar'
Plug 'mtscout6/vim-cjsx'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic' seems to mess with .sh scripts first line
Plug 'slim-template/vim-slim'
Plug 'slm-lang/vim-slm'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
" For some reason powerline doesn't work anymore in macos mojave (issue with
" python signage)
" Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/bufkill.vim'
Plug 'vim-scripts/oceandeep'
Plug 'wavded/vim-stylus'
Plug 'wizicer/vim-jison'
" Plugs I added after this very long list of stuff
Plug 'mhinz/vim-startify'
" Plug 'takac/vim-hardtime' when not using vim often (which is the case
" right now) this plugin only makes me want to switch to sublimetext
" Plug 'Valloric/YouCompleteMe'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'ryanoasis/vim-devicons' " Load after : NERDTree | vim-airline | CtrlP | powerline | Denite | unite | lightline.vim | vim-startify | vimfiler | flagship

call plug#end()


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

" Syntastic recommended settings (disabled, plugin messes with shell scripts
" first line)
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

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

" YouCompleteMe configuration
" let g:EclimCompletionMethod = 'omnifunc'

" Javacomplete2 configuration
autocmd FileType java setlocal omnifunc=javacomplete#Complete


