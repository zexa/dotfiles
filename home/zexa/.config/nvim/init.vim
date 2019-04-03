" Plugins
call plug#begin()
Plug 'sbdchd/neoformat'
Plug 'itchyny/lightline.vim'
Plug 'shime/vim-livedown'
Plug 'cespare/vim-toml'

Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi' "TypeScript

" Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'maksimr/vim-jsbeautify'
call plug#end()

" weird vim colors in hyper 
" set termguicolors

" wrap is annoying
set nowrap

" indentation settings
set expandtab
set shiftwidth=4
set softtabstop=4

" show line num
set nu

" Mustache looks like html basically.
"au BufReadPost * .mustache set syntax = html

" use system clipboard
set clipboard=unnamedplus

" Comment
"map <C-C>:s:^:\/\/<CR>
"map <C-T>:s:^ \/\/<CR>

set nohlsearch

set notermguicolors

set noshowmode


" Plugin specific: Livedown
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1 " should the browser window pop-up upon previewing
let g:livedown_open = 1 " the port on which Livedown server will run
let g:livedown_port = 1337 " the browser to use
let g:livedown_browser = "firefox"

" Plugin specific: Tsuquyomi
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

set nobackup
set nowritebackup
