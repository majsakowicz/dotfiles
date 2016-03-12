"""""""""""""""""""""""""""""""""""""""""""
"""" WYGLAD """"
"""""""""""""""""""""""""""""""""""""""""""
colorscheme monokai
syntax enable

set tabstop=4		" ilosc spacji na tab
set softtabstop=4	" ilosc spacji na tab podczas edytowania
set expandtab		" tab staja sie spacjami

set number		    " pokazuje numery linii
set cursorline		" podwietla biezaca linie

set wildmenu        " automatyczne wpisywanie komend menu

set lazyredraw      " przerysowywanie? tylko kiedy trzeba

set showmatch       " podwietla pasujace nawiasy [{()}]

"""""""""""""""""""""""""""""""""""""""""""
"""" FUNKCJONALNOSC """"
"""""""""""""""""""""""""""""""""""""""""""
"wylacza tworzenie kopii zapasowych i plikow tymczasowych
set nobackup
set nowritebackup
set noswapfile

set incsearch       " szukaj jak znaki sa wprowadzone
set hlsearch        " podswietl pasujace wyniki
" po wyszukiwaniu kliknac ,<space> by usunac podwietlenia wynikow
nnoremap <leader><space> :nohlsearch<CR>

set foldenable      " wlacz skladanie
set foldlevelstart=10 " skladanie od 10 linii
set foldnestmax=10  " maksymalnie 10 razy zagniezdzonych skladan
nnoremap <space> za " spacja otwiera/zamyka skladanie wokol biezacego bloku
set foldmethod=indent " skladanie na podstawie wciec

" przemieszczanie wedlug faktycznych linii, nie patrzy na rozszerzenia linii
nnoremap j gj
nnoremap k gk

nnoremap gV `[v`]   " podswietla ostatnie znaki ktore wprowadzono

set clipboard=unnamed " normalny schowek

"pathogen do zarzadzania pluginami
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
call pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""
"""" PLUGINY """"
"""""""""""""""""""""""""""""""""""""""""""
"CTRLP
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"JEDI_VIM
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"""""""""""""""""""""""""""""""""""""""""""
"""" SKROTY KLAWISZOWE """"
"""""""""""""""""""""""""""""""""""""""""""
let mapleader=","   " zmienia leader z \ na ,
"inoremap jk <esc>   " jk zamiast esc

nnoremap <leader>s :mksession<CR> " zachowuje sesje

"latwiejsze przemieszczanie sie pomiedzy zakladkami
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

noremap <Leader>e :quit<CR> "zamykanie aktywnego okna
noremap <Leader>E :ga!<CR>  "zamykanie wszystkich okien

"poruszanie sie pomiedzy oknami: ctrl + <ruch>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"funkcja sortujaca po kliknieciu ,s
vnoremap <Leader>s :sort<CR>

"przesuwanie bloku kodu
vnoremap < <gv
vnoremap > >gv


