"*************************************************************
"* Archivo de configuración de vim
"*
"* v 0.2
"*
"* por Arias, Emanuel
"*************************************************************


"*************************************************************
"* >> General
"*************************************************************
" usar pathogen
execute  pathogen#infect()

" quitar compatbilidad con vi. más funcionalidad
set nocompatible
filetype plugin on 

" evitar que se cierren los buffer y seguir usandolos
set hidden

" habilitar uso del mouse
set mouse=a

" modifica el titulo de la terminal
set title


"*************************************************************
"* >> Visual
"*************************************************************

" que el texto no pase del borde de la pantalla visible
set wrap

" coloreado de sintaxis si tiene sintaxis
if has("syntax")
    syntax on
endif

" numero de linea
set number

" color schema
colorscheme jellybeans 


"*************************************************************
"* >> Tabs y espacios
"*************************************************************

" 4 espacios para auto indentacion
set shiftwidth=4

" usar F2 para evitar que al pegar codigo indentado le agregue mas tabs
set pastetoggle=<F2>

" cambiar tabs por espacios
set expandtab

" tabs de 4 espacios
set tabstop=4

" indentacion automatica
set autoindent
set smartindent
set copyindent


"*************************************************************
"* >> Búsquedas
"*************************************************************

" busqueda ignorando mayusculas, pero si una letra es mayuscuña si
set ignorecase
set smartcase

" busqueda parcial mientras escribis
set incsearch

" matching parentesis
set showmatch


"*************************************************************
"* >> NERDTree
"*************************************************************

" abrir NERDTree automáticamente si no se abre ningún archivo
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" cerrar vim si solo queda abierto NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" mapear Crtl+n para abrir NERDTree
map <C-n> :NERDTreeToggle<CR>

"*************************************************************
"* >> Varios (ortografía y más...)
"*************************************************************

" corrector ortografico
"set spell

" idiomas para el corrector
set spelllang=es,en

" deshacer 'infinito'
set undolevels=1000

"*************************************************************
"* >> Mapeo de teclas
"*************************************************************

"teclas de dirección en el modo normal como en el teclado español
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ñ l

" teclas para movernos por paneles como en el teclado español
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>ñ <C-w>l
nnoremap <C-w>J <C-w>H
nnoremap <C-w>K <C-w>J
nnoremap <C-w>L <C-w>K
nnoremap <C-w>Ñ <C-w>L

" teclas para cambiar de línea en frases largas como en un teclado español
nnoremap gk gj
nnoremap gl gk

" teclas para el modo visual como en el teclado español
vnoremap j h
vnoremap k j
vnoremap l k
vnoremap ñ l

" teclas para moverse entre buffers más facilmente
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
