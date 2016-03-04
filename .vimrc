"""""""""""""""""""""""""""""""""""""""""""
"""" WYGLAD """"
"""""""""""""""""""""""""""""""""""""""""""
colorscheme monokai
syntax enable

set tabstop=4		" ilosc spacji na tab
set softtabstop=4	" ilosc spacji na tab podczas edytowanie
set expandtab		" tab staja sie spacjami

set number		    " pokazuje numery linii
set cursorline		" podwietla biezaca linie

set wildmenu        " automatyczne wpisywanie komend menu

set lazyredraw      " przerysowywanie? tylko kiedy trzeba

set showmatch       " podwietla pasujace nawiasy [{()}]

"""""""""""""""""""""""""""""""""""""""""""
"""" FUNKCJONALNOSC """"
"""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""
"""" SKROTY KLAWISZOWE """"
"""""""""""""""""""""""""""""""""""""""""""
let mapleader=","   " zmienia leader z \ na ,
"inoremap jk <esc>   " jk zamiast esc

" lub zamiana na linuxie Caps Lock i ESC:
" tworzymy plik .speedswapper a w nim:
"   !Swap caps lock and escape
"   remove Lock = Caps_Lock
"   keysym Escape = Caps_Lock
"   keysym Caps_Lock = Escape
"   add Lock = Caps_Lock
" i wpisujemy do terminala $xmodmap ~/.speedswapper

nnoremap <leader>s :mksession<CR> " zachowuje sese
