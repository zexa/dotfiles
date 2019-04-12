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
Plug 'qxxxb/vim-searchhi' " Highlight the current search result in a different style than the other search results.
Plug 'itchyny/lightline.vim' " The cool blue line on the bottom 
Plug 'shime/vim-livedown' " Live markdown preview
Plug 'cespare/vim-toml' " Syntax for toml
Plug 'leafgarland/typescript-vim' " Syntax for typescript
Plug 'Quramy/tsuquyomi' " Typescript linter
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'sbdchd/neoformat' " Code formatter 
Plug 'maksimr/vim-jsbeautify' " Code formatter for js/html/json
call plug#end()

" Plugins: Livedown
let g:livedown_autorun = 1
let g:livedown_open = 1
let g:livedown_port = 1337
let g:livedown_browser = "firefox"

" Plugins: Tsuquyomi
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
