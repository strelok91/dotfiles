
colorscheme badwolf
syntax enable

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" set tabstop=4
" set softtabstop=4
" set expandtab


set number
set showcmd
set cursorline
set wildmenu
set lazyredraw

set incsearch
set hlsearch

set mouse= " disable mouse

call plug#begin('~/.config/nvim/plugged')

" A help plugin"
Plug 'technosophos/vim-myhelp'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
" Plug 'vim-scripts/AutoClose'
"Plug 'mattn/emmet-vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-fugitive'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plug 'honza/vim-snippets'

let g:UltiSnipsSnippetDirectories=["~/.config/nvim/snippets"]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


call plug#end()

nnoremap <space> :nohlsearch<CR>
nnoremap gV `[v`]
nnoremap <C-b> :call ToggleNumber()<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-s> :MaximizerToggle<CR>



" toggle between number and relativenumber
function! ToggleNumber()
        if(&relativenumber == 1)
                set norelativenumber
                set number
        else
                set relativenumber
        endif
endfunc

fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun


call SetupCommandAlias("W","w")
call ToggleNumber()

let g:ctrlp_show_hidden = 1

