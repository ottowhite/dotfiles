call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'doums/darcula'
Plug 'dracula/vim'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'craigemery/vim-autotag'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'KabbAmine/vCoolor.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Appearance
set encoding=utf-8
let ayucolor="dark"
colorscheme space-vim-dark
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#branch#enabled = 1
set nu rnu
set hlsearch
set colorcolumn=79
filetype on
syntax on
hi Normal guibg=NONE ctermbg=NONE
hi ColorColumn guibg=Black ctermbg=Black
hi clear LineNr
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Tabbing and functionality
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
set smartindent
set smartcase 
set incsearch
" keeps going up a directory until it finds a tag file
set tags=tags;/ 
set updatetime=100

" Other settings
set visualbell t_vb=
set noswapfile
set nobackup
set diffopt+=vertical

" Maps

let mapleader = " "

" imap ii	<Esc>
imap <C-c>	 <Esc>
map	 <C-l>   :noh <CR>

map  <C-n> :NERDTreeToggle<CR>
map  <C-f> :Files<CR>
map  <C-d> :Rg<CR>

nnoremap <Leader>h   gT
nnoremap <Leader>l   gt
noremap  <Leader>H  :-tabmove<CR>
noremap  <Leader>L  :+tabmove<CR>
nmap	   <Leader>gs :G<CR>
nmap	   <Leader>gh :diffget //2<CR>
nmap	   <Leader>gl :diffget //3<CR>

" CSCOPE
" nmap <C-p>  viw"fy:cs find c <C-r>f<CR>
" nmap <C-}> 
" nmap <C-p> <Plug>(coc-references) Need to set up LSP for this

" Plugin specific config
let g:ycm_show_diagnostics_ui = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = " l:"
let g:airline_symbols.colnr = " c:"
let g:airline_symbols.maxlinenr= ' '
let g:airline#extensions#syntastic#enabled = 1

" No top right for airline
let airline#extensions#tabline#show_tab_count = 0
let airline#extensions#tabline#exclude_preview = 1
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0

" IndentLine {{
" let g:indentLine_char = '|'
" let g:indentLine_first_char = '|'
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" }}

" function! StartUp()
"     if 0 == argc()
"         NERDTree
"     end
" endfunction
" 
" autocmd VimEnter * call StartUp()

" Not required as airline will manage the statusline for us
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" autoload CScope database
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable 
  elseif $CSCOPE_DB != "" 
    cs add $CSCOPE_DB
  endif
endfunction
au BufEnter /* call LoadCscope()

" let g:syntastic_mode_map = {
"       \ "mode": "active",
"       \ "active_filetypes": ["c"],
"       \ "passive_filetypes": [] }
" 
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_ignore_file = 1
" let g:syntastic_c_config_file=findfile(".syntastic_c_config", ".;")


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap gc :VCoolor<CR>
nmap gd "ayiw:echo printf("%d", <C-r>a)<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

vmap <C-c> :w !xclip -i -sel c<CR><CR>
