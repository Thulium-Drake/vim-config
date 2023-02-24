" Init vim-plug
call plug#begin()

" Defaults
set encoding=utf-8
set autochdir
set nomodeline
set history=1000
set showmode
set scrolloff=3
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*.bin
set visualbell
set ttyfast
set ruler
set laststatus=1

" Colors
syntax enable
set t_Co=256

" CoC settings
hi CocErrorSign ctermfg=Red
hi CocFloating ctermfg=yellow ctermbg=gray
hi CocInfoFloat ctermfg=green ctermbg=gray
hi CocWarningFloat ctermfg=yellow ctermbg=gray
hi CocHintFloat ctermfg=green ctermbg=gray
hi CocErrorFloat ctermfg=yellow ctermbg=gray

" Set files in playbooks dir to be Ansible YAML
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
" Map yaml.ansible to ansible
let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }


" Press enter to accept CoC suggestion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" command mode: press g + a to trigger codeaction
nmap <silent> ga <Plug>(coc-codeaction-line)
" insert mode: press ctrl space to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Hilight trailing whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
" Set hilight group for whitespace
highlight BadWhitespace ctermbg=red guibg=red

hi clear SpellBad
hi SpellBad cterm=underline ctermbg=darkgreen gui=undercurl guibg=darkgreen

" Mark leading tabs as bad
au BufRead,BufNewFile *.py,*.pyw,*.pp,*.go match BadWhitespace /^\t\+/
" Mark trailing whitespace as bad
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.pp,*.go match BadWhitespace /\s\+$/

" Tab/indent settings
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=indent,eol,start

" Clear search highlight and redraw screen
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Show hidden chars
set listchars=tab:▸\ ,eol:¬

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
Plug 'vim-airline/vim-airline', {'tag': '*'}
Plug 'godlygeek/tabular', {'branch': 'master'}

" Do it
call plug#end()
