set termguicolors
set background=dark

let mapleader = " "
let maplocalleader = " "
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:highlightedyank_highlight_duration = 100

" options
" set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set softtabstop=4
set clipboard=unnamed
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set scrolloff=10
set wildmenu
set background=dark
set belloff=all

" keymaps
noremap <Esc><Esc> :noh<Cr>
noremap <leader>pp :Ex<Cr>
noremap <leader>w :w!<Cr>
noremap <leader>q :q<Cr>
noremap <leader>r :source ~/.vimrc<Cr>
noremap <leader>t :tabnew<Cr>
noremap <leader>tc :tabclose<Cr>
noremap <leader>v :vsplit<Cr>
noremap <leader>h :split<Cr>
noremap <leader>ff :GitFiles<Cr>
noremap <leader>fg :Rg<Cr>
noremap s <Plug>(easymotion-overwin-f)
noremap <leader>g :G<Cr>
noremap <leader>P :G push<Cr>
noremap <C-p> :Vista finder<CR>
noremap <leader>ld :Vista vim_lsp<CR>
noremap <leader>vim :edit ~/.vimrc<CR>

" GitGutter remaps
noremap ]h <Plug>(GitGutterNextHunk)
noremap [h <Plug>(GitGutterPrevHunk)
noremap <leader>hp <Plug>(GitGutterPreviewHunk)

noremap <leader><leader> :LspDocumentFormat<Cr>

nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>

noremap <C-D> <C-D>zz
noremap <C-U> <C-U>zz

" move between splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Ctrl+c to copy to clipboard (only works when VIM is open)
map <C-c> "+y<CR>
nnoremap <C-c> "+y<CR>
inoremap <C-c> "+y<CR>

" plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'liuchengxu/vista.vim'
Plug 'huyvohcmc/atlas.vim'
Plug 'andreypopp/vim-colors-plain'

call plug#end()

colorscheme plain-cterm

" Transparent
let t:is_transparent = 1
function! Toggle_transparent_background()
	  if t:is_transparent == 0
			hi Normal guibg=#111111 ctermbg=black
			let t:is_transparent = 1
		else
			hi Normal guibg=NONE ctermbg=NONE
			let t:is_transparent = 0
		endif
endfunction
nnoremap <leader>tt :call Toggle_transparent_background()<CR>

autocmd VimEnter * call Toggle_transparent_background()


" if executable('zls')
"   au User lsp_setup call lsp#register_server({
"      \ 'name': 'zls',
"      \ 'cmd': {server_info->['zls']},
"      \ 'allowlist': ['zig'],
"      \ })
" endif

imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gs <plug>(lsp-document-symbol-search)
  nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> gt <plug>(lsp-type-definition)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
  nmap <buffer> [d <plug>(lsp-previous-diagnostic)
  nmap <buffer> ]d <plug>(lsp-next-diagnostic)
  nmap <buffer> K <plug>(lsp-hover)
  inoremap <buffer> <expr><c-f> lsp#scroll(+4)
  inoremap <buffer> <expr><c-d> lsp#scroll(-4)

  let g:lsp_format_sync_timeout = 1000
  autocmd! BufWritePre *.rs,*.go.,*.zig call execute('LspDocumentFormatSync')

endfunction
augroup lsp_install
    au!

" Enable auto-format on save for specific file types
" augroup lsp_auto_format
"   autocmd!
"   autocmd BufWritePre *.rs,*.go,*.zig lua vim.lsp.buf.formatting_sync(nil, 1000)
" augroup END
