" General
set syntax=on " Colorful syntaxing
set nu " Show line numbers
set clipboard=unnamedplus " Use system clipboard (C-S-C & C-S-V)
set hlsearch " Highlight all search results
set termguicolors " True color support
set nowrap " Do not wrap text if its longer than term size
set notermguicolors " Allow vim to take charge of colors
set noshowmode " Hides current mode (because lightline takes care of it)
set nobackup " No need to create ~ files (on open event)
set nowritebackup " No need to create ~ files (on write event) 
set expandtab
set shiftwidth=2
set softtabstop=2
set modifiable
" TODO: automatically adapt to file tab settings.

" General: Keybinds
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Plugins
call plug#begin()
  Plug 'shime/vim-livedown'
  Plug 'cespare/vim-toml'
  Plug 'leafgarland/typescript-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-rls'
  Plug 'cespare/vim-toml' " Syntax for toml
  Plug 'leafgarland/typescript-vim' " Syntax for typescript
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
call plug#end()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Plugins: Livedown
let g:livedown_autorun = 1
let g:livedown_open = 1
let g:livedown_port = 1337
let g:livedown_browser = "firefox"

" Plugins: markdown-preview
" TODO: Need a way to make browser env modular
let g:mkdp_auto_start=1
let g:mkdp_browser=$FIREFOX

