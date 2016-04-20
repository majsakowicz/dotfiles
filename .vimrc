""""""""""""""""""""""""""""""""""""""""
""""" PLUGINS """""
""""""""""""""""""""""""""""""""""""""""
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible	" required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"============ALL VUNDLE PLUGINS MUST BE DECLARED BELOW HERE=====================
Plugin 'VundleVim/Vundle.vim'		" let Vundle manage Vundle, required
Plugin 'ctrlpvim/ctrlp.vim'		" searching files
Plugin 'Valloric/YouCompleteMe'		" C++/Python completion
Plugin 'kana/vim-operator-user.git' " Prereq for vim-clang-format
Plugin 'rhysd/vim-clang-format.git' " C++ code formatting
"==========ALL VUNDLE PLUGINS MUST BE DECLARED ABOVE HERE=======================

call vundle#end()            " required
filetype plugin indent on    " required, automatically detects type of files

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" to install:
" launch vim and run :PluginInstall
" from command line: vim +PluginInstall +qall

set wildmenu

" CTRLP
let g:ctrlp_max_height = 30
set wildignore+=*.pyc*,*.swp*,*.zip
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0           " set no max file limit
let g:ctrlp_working_path_mode = 0   " search from current directory
"let g:ctrlp_user_command = 'find %s -type f'	" custom file listing command 

" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/cpp/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" Clang Format
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}


""""""""""""""""""""""""""""""""""""""""
""""" APPEARANCE """""
""""""""""""""""""""""""""""""""""""""""
" reduced contrast palette
" color	dark	light
" BLK	#2D3C46	#425059
" RED	#A54242	#CC6666
" GRN	#8C9440	#B5BD68
" YEL	#DE935F #F0C674
" BLU	#5F819D	#81A2BE
" MAG	#85678F	#B294BB
" CYN	#5E8D87	#8ABEB7
" WHT	#6C7A80	#C5C8C6
set background=dark
let g:hybrid_custom_term_colors = 1
let g:gybrid_reduced_contrast = 1
colorscheme hybrid

syntax on		" highlights syntax

set number		" shows line numbers
set cursorline		" highlights the current line
set showmatch		" highlights matching brackets [{()}]


""""""""""""""""""""""""""""""""""""""""
""""" FUNCTIONALITY """""
""""""""""""""""""""""""""""""""""""""""
" turning off creating backup and temporary files
set nobackup
set nowritebackup
set noswapfile

set clipboard=unnamedplus	" normal clipboard


""""""""""""""""""""""""""""""""""""""""
""""" MAPPING KEYS """""
""""""""""""""""""""""""""""""""""""""""
let mapleader=","	" changes leader from \ to ,

nnoremap <leader>s :mksession<CR>	" hold session	

" easier to move between tabs
map <leader>n <esc>:tabprevious<CR>
map <leader>m <esc>:tabnext<CR>

noremap <leader>e :quit<CR>		" closing active window 
noremap <leader>E :ga!<CR>		" closing all windows

" move between windows: ctrl + <motion>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" sort function
vnoremap <leader>s :sort<CR>

" moving block of code
vnoremap < <gv
vnoremap > >gv

" disabling arrows
no <up> <Nop>
no <right> <Nop>
no <down> <Nop>
no <left> <Nop>

ino <up> <Nop>
ino <right> <Nop>
ino <down> <Nop>
ino <left> <Nop>

" fast pairing
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

" g<Ctrl+o> creates a new line below cursor in the normal mode
nmap g<C-O> o<ESC>k
" g<Shift+o> creates a new line above cursor in the normal mode
nmap gO O<ESC>j


