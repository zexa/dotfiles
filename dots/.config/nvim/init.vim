call plug#begin()
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'cespare/vim-toml'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-yaml'
  Plug 'leafgarland/typescript-vim'
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'dylanaraps/wal.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  Plug 'junegunn/limelight.vim'
call plug#end()

" Plugins: Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \ 'rust': ['rustfmt'],
\}

" Plugins: Coc
"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Plugins: Limelight (dims every line but the current one)
autocmd VimEnter * Limelight

" Plugins: markdown-preview.nvim
let g:mkdp_auto_start = 1
let g:mkdp_browser = 'firefox'

" General: Preferences
set syntax=on
set nu
set clipboard=unnamedplus " Use system clipboard (C-S-C & C-S-V)
set hlsearch " Highlight all search results
set termguicolors " True color support
set nowrap " Do not wrap text if its longer than term size
set notermguicolors " Allow vim to take charge of colors
set nobackup " No need to create ~ files (on open event)
set nowritebackup " No need to create ~ files (on write event)
set expandtab
set shiftwidth=2
set softtabstop=2
set modifiable
colorscheme wal
" Default vim file browser has multiple styles. This one shows the current
" directory.
let g:netrw_liststyle = 3

" General: Keybinds
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>
