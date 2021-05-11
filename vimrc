let vim_plug_file=expand('~/.vim/autoload/plug.vim')

if !filereadable(vim_plug_file)
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  :source ~/.vimrc
  :PlugInstall
  :q
endif

nmap <F1> :source ~/.vimrc<cr>:PlugUpdate<cr>
nmap <F2> :PlugDiff<cr>
nmap <F3> :PlugStatus<cr>
nmap <F4> :PlugClean<cr>
nmap <F12> :!curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/Posen2101024/dotfiles/master/vimrc<cr>:source ~/.vimrc<cr>

silent! if plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
  let g:gitgutter_map_keys = 0

Plug 'bfrg/vim-cpp-modern'
  let g:cpp_attributes_highlight = 1
  let g:cpp_member_highlight = 1
  let g:cpp_simple_highlight = 1

Plug 'chr4/nginx.vim'

" Plug 'dracula/vim', { 'as': 'dracula' }
"   let g:dracula_bold = 0
"   let g:dracula_italic = 1
"   let g:dracula_underline = 1
"   let g:dracula_undercurl = 1
"   let g:dracula_full_special_attrs_support = 1
"   let g:dracula_inverse = 1
"   let g:dracula_colorterm = 1

Plug 'ervandew/supertab'
  let g:SuperTabCrMapping             = 1
  " let g:SuperTabDefaultCompletionType = 'context'
  let g:SuperTabLongestHighlight      = 1
  let g:SuperTabMidWordCompletion     = 0

Plug 'godlygeek/tabular'
  nnoremap <leader>tab :Tabularize /

Plug 'junegunn/fzf', { 'do': './install --all' }

Plug 'junegunn/fzf.vim'
  nmap <leader><tab> :GFiles<cr>

Plug 'junegunn/vim-easy-align'
  nmap ga <Plug>(EasyAlign)
  xmap ga <Plug>(EasyAlign)

Plug 'martinda/Jenkinsfile-vim-syntax'

Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
  let g:undotree_WindowLayout = 2
  nnoremap U :UndotreeToggle<cr>

Plug 'mhinz/vim-startify'

" Plug 'sainnhe/gruvbox-material'
"   let g:gruvbox_material_better_performance     = 1
"   let g:gruvbox_material_background             = 'hard'
"   let g:gruvbox_material_foreground             = 'material'
"   let g:gruvbox_material_visual                 = 'reverse'
"   " let g:gruvbox_material_transparent_background = 1

Plug 'pangloss/vim-javascript'

Plug 'plasticboy/vim-markdown'
  let g:vim_markdown_conceal             = 0
  let g:vim_markdown_conceal_code_blocks = 0
  let g:vim_markdown_folding_disabled    = 1

Plug 'preservim/nerdtree'
  let NERDTreeWinSize=30
  let NERDTreeWinPos='right'
  nmap <tab> :NERDTreeMirror<cr>:NERDTreeToggle<cr>

Plug 'tomasr/molokai'
  let g:molokai_original = 1
  let g:rehash256 = 1

Plug 'towolf/vim-helm'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'
  nmap <leader>git :Git
  nmap gs :Gvdiffsplit<cr>
  nmap gr :Gread<cr>
  nmap gw :Gwrite<cr>

Plug 'vim-airline/vim-airline'
  let g:airline_extensions                           = ['branch', 'tabline']
  let g:airline#extensions#tabline#enabled           = 1
  let g:airline#extensions#tabline#fnamemod          = ':t'
  let g:airline#extensions#tabline#left_alt_sep      = ''
  let g:airline#extensions#tabline#left_sep          = ''
  let g:airline#extensions#tabline#show_buffers      = 0
  let g:airline#extensions#tabline#show_close_button = 0
  let g:airline#extensions#tabline#show_splits       = 0
  let g:airline#extensions#tabline#show_tab_nr       = 0
  let g:airline#extensions#tabline#show_tab_type     = 0
  let g:airline#extensions#tabline#tab_min_count     = 2
  let g:airline_section_x                            = "%{col('.')-1}/%{col('$')-1} @ %l/%L"
  let g:airline_section_y                            = "%{&filetype}"
  let g:airline_section_z                            = "%{strftime('%Y-%m-%d %H:%M')}"

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.branch = '⎇'

Plug 'vim-airline/vim-airline-themes'
  " let g:airline_theme = 'dracula'
  " let g:airline_theme = 'gruvbox_material'
  let g:airline_theme = 'molokai'

Plug 'vim-python/python-syntax'
  let g:python_highlight_all = 1

" Plug 'vim-syntastic/syntastic'
"   let g:syntastic_cpp_checkers = ['cpplint']
"   let g:syntastic_cpp_cpplint_exec = 'cpplint'
"   let g:syntastic_python_checkers = ['pylint']
"   let g:syntastic_python_pylint_args = '--disable=C0114,C0115,C0116'
"   let g:syntastic_error_symbol = 'E>'
"   let g:syntastic_style_error_symbol = 'E>'
"   let g:syntastic_warning_symbol = 'W>'
"   let g:syntastic_style_warning_symbol = 'W>'


Plug 'Yggdroot/indentLine'
  let g:indentLine_char_list  = ['|', '¦', '┆', '┊']
  let g:indentLine_color_term = 239
  let g:indentLine_enabled    = 1
  " let g:indentLine_setConceal = 0
  let g:markdown_syntax_conceal=0
  let g:vim_json_conceal=0

call plug#end()
endif

set autochdir
set autoindent
set background=dark
set backspace=2
set cursorline
set encoding=utf-8
set expandtab
set fileformat=unix
set hlsearch
set ic
set incsearch
set list
set listchars=tab:├─,trail:.,extends:»,precedes:«,nbsp:×
set nocompatible
set nowrap
set noshowmode
set number
set re=0
set scrolloff=1
set shiftwidth=4
set showmatch
set sidescroll=1
set softtabstop=4
set tabstop=4
set timeoutlen=1000
set ttimeoutlen=1
set t_Co=256

try
  " colorscheme dracula
  " colorscheme gruvbox-material
  colorscheme molokai
  catch
endtry

if has('termguicolors')
  set termguicolors
endif

filetype plugin indent on
syntax on

highlight link GitGutterChangeLine DiffText
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
autocmd BufWritePost * GitGutter

nnoremap <s-tab> :set number!<cr>:set list!<cr>:IndentLinesToggle<cr>:GitGutterToggle<cr>

noremap , <c-e>
noremap ; <c-y>
noremap <leader>, <c-d>
noremap <leader>; <c-u>
noremap <leader>a <c-w>h
noremap <leader>s <c-w>j
noremap <leader>w <c-w>k
noremap <leader>d <c-w>l
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tabmove -1<cr>

autocmd BufNewFile,BufRead Dockerfile*  set filetype=dockerfile
autocmd BufNewFile,BufRead Jenkinsfile* set filetype=Jenkinsfile
autocmd BufNewFile,BufRead envfile      set filetype=make
autocmd BufNewFile,BufRead *.template   set filetype=nginx

autocmd Filetype cpp         setlocal commentstring=//\ %s
autocmd Filetype javascript  setlocal commentstring=//\ %s softtabstop=2 shiftwidth=2
autocmd Filetype Jenkinsfile setlocal commentstring=//\ %s softtabstop=2 shiftwidth=2
autocmd Filetype make        setlocal commentstring=#\ %s  noexpandtab
autocmd Filetype nginx       setlocal commentstring=#\ %s
autocmd FileType python      setlocal commentstring=#\ %s
autocmd Filetype vim         setlocal commentstring=\"\ %s softtabstop=2 shiftwidth=2
autocmd Filetype vue         setlocal commentstring=<!--\ %s\ --> softtabstop=2 shiftwidth=2
autocmd Filetype yaml        setlocal commentstring=#\ %s  softtabstop=2 shiftwidth=2

autocmd FileType cpp         map <buffer> <F5>      :w<cr>:! g++ -std=c++11 -o %:r %; ./%:r<cr>
autocmd FileType cpp        imap <buffer> <F5> <esc>:w<cr>:! g++ -std=c++11 -o %:r %; ./%:r<cr>
autocmd FileType javascript  map <buffer> <F5>      :w<cr>:! node %<cr>
autocmd FileType javascript imap <buffer> <F5> <esc>:w<cr>:! node %<cr>
autocmd FileType python      map <buffer> <F5>      :w<cr>:! python3 %<cr>
autocmd FileType python     imap <buffer> <F5> <esc>:w<cr>:! python3 %<cr>
autocmd FileType sh          map <buffer> <F5>      :w<cr>:! /bin/bash %<cr>
autocmd FileType sh         imap <buffer> <F5> <esc>:w<cr>:! /bin/bash %<cr>

autocmd FileType cpp         map <buffer> <F8>      :w<cr>:! g++ -std=c++11 -o %:r %<cr><cr>
autocmd FileType cpp        imap <buffer> <F8> <esc>:w<cr>:! g++ -std=c++11 -o %:r %<cr><cr>

command! ToggleMouse if empty(&mouse) | set mouse=a | else | set mouse= | endif
nnoremap <F11> :ToggleMouse<cr>
