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
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } } " Markdown preview
  Plug 'cespare/vim-toml' " Syntax for toml
  Plug 'leafgarland/typescript-vim' " Syntax for typescript
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense (autocomplete) engine
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'sbdchd/neoformat' " Code formatter 
  Plug 'maksimr/vim-jsbeautify' " Code formatter for js/html/json
call plug#end()

" Plugins: markdown-preview
" TODO: Need a way to make browser env modular
let g:mkdp_auto_start=1
let g:mkdp_browser=$FIREFOX
