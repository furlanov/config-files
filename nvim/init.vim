let g:coc_disable_startup_warning = 1

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
if has('nvim-0.8.0')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
Plug 'morhetz/gruvbox'
call plug#end()

set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set mouse=a
colorscheme gruvbox
set background=dark

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>

if has('nvim-0.8.0')
  inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  inoremap <silent><expr> <C-Space> coc#refresh()
endif
