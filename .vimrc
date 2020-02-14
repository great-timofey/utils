call plug#begin('~/.vim/plugged')
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'wincent/ferret'
Plug 'chaoren/vim-wordmotion'
Plug 'digitaltoad/vim-pug'
Plug 'dart-lang/dart-vim-plugin'
Plug 'Asheq/close-buffers.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/matchit'
Plug 'crusoexia/vim-monokai'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'Yggdroot/indentLine'
Plug 'gregsexton/MatchTag'
Plug 'vim-scripts/256-grayvim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'luochen1990/rainbow'
Plug 'mhartington/oceanic-next'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ryanoasis/vim-devicons'
Plug 'severij/vadelma'
call plug#end()

let g:rainbow_active = 1
filetype off
filetype plugin on
filetype plugin indent on
syntax on
if (has("termguicolors"))
set termguicolors
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
endif

"visual stuff
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_theme = 'cobalt2'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#keymap#enabled = 0
let g:javascript_plugin_flow = 1
let g:ctrlp_working_path_mode = 'r'
colo vadelma
set guifont=Hack\ Regular\ Nerd\ Font\ Complete:h12
set background=dark
set lazyredraw
set scrolljump=8
set hlsearch
set guioptions-=r
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_by_filename = 0
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'
let g:indentLine_char = '|'

"behavior
set number
set tabstop=2
set shiftwidth=2
set autoread
set autoindent
set smartindent
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set ignorecase
set pumheight=10
set encoding=utf8
set smarttab
set expandtab
set splitbelow
set splitright
set wildmenu
set noswapfile
set cursorline
set updatetime=500
set incsearch
set guioptions=
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:multi_cursor_use_default_mapping=0
autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = '●' 
let g:ale_sign_warning = '.'

"dart section
let dart_format_on_save=1

"mappings
let g:mapleader = ','
nnoremap <silent> <leader>c :NERDTreeClose<bar>bufdo bd<CR><Paste>
nnoremap <leader>e :Eval<Cr>
map <Leader>f <Plug>(easymotion-s)
map <C-n> : NERDTreeToggle<Cr>
map \q "aditcat<C-x><C-r>a<ESC>
xnoremap p pgvy
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap d "_d

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
set conceallevel=1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1

let iterm_profile = $ITERM_PROFILE

if iterm_profile == "Default"
  set background=dark
  let g:airline_theme='wombat'
else
  set background=light
  let g:airline_theme='atomic'
endif
