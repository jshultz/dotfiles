let bundles_installed=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let bundles_installed=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ================= Naviagtion ====================
Bundle 'scrooloose/nerdtree'
  let NERDTreeShowBookmarks=1
  let NERDTreeSortOrder=[]

  augroup ps_nerdtree
      au!

      au Filetype nerdtree setlocal nolist
      au Filetype nerdtree nnoremap <buffer> K :q<cr>
  augroup END

  let NERDTreeHighlightCursorline = 1
  let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                      \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                      \ '.*\.o$', 'db.db', 'tags.bak']

  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:NERDTreeMouseMode = 2

" Bundle 'fholgado/minibufexpl.vim'
  " let g:miniBufExplMapWindowNavVim = 1
  " let g:miniBufExplMapWindowNavArrows = 1

Bundle 'kien/ctrlp.vim'
let g:ctrlp_extensions = ['funky', 'modified', 'filetype', 'cmdpalette']

Bundle 'tacahiroy/ctrlp-funky'

Bundle 'danielcbaldwin/ctrlp-modified.vim'
Bundle 'endel/ctrlp-filetype.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

Bundle 'majutsushi/tagbar'
  let g:tagbar_compact = 1
  let g:tagbar_sort = 0
  let g:tagbar_autofocus = 1
" =================================================

" ==================== Color ======================
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'crusoexia/vim-monokai'
Bundle 'nanotech/jellybeans.vim'
" =================================================

" ===================== UI ========================
Bundle 'bling/vim-airline'
let g:airline_theme             = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1

" vim-powerline symbols
"let g:airline_left_sep           = '⮀'
"let g:airline_left_alt_sep       = '⮁'
"let g:airline_right_sep          = '⮂'
"let g:airline_right_alt_sep      = '⮃'
"let g:airline_symbols.branch     = '⭠'
"let g:airline_symbols.readonly   = '⭤'
"let g:airline_symbols.linenr     = '⭡'
" =================================================

" ================== Commands =====================
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
  autocmd FileType ruby set commentstring=#\ %s
  autocmd FileType vim set commentstring=\"\ %s
  autocmd FileType javascript set commentstring=\/\/\ %s
" =================================================

" ================== Helpers ======================
" Bundle 'ervandew/supertab'
" Bundle 'airblade/vim-gitgutter'
" Bundle 'rstacruz/sparkup'
" =================================================

" ============= Language Additions ================
Bundle 'scrooloose/syntastic'

" Ruby
Bundle 'vim-ruby/vim-ruby'
  let ruby_operators=1
Bundle 'tpope/vim-endwise'
Bundle 'vim-scripts/ruby-matchit'

" CSS
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'

" HTML
Bundle 'othree/html5.vim'

" Other Languages
Bundle 'mutewinter/nginx.vim'
Bundle 'timcharper/textile.vim'
Bundle 'acustodioo/vim-tmux'
Bundle 'hallison/vim-markdown'
Bundle 'jnwhiteh/vim-golang'
" =================================================
"
" =================== Others ======================
Bundle 'davidoc/taskpaper.vim'
Bundle 'mbbill/VimExplorer'
Bundle 'mrtazz/simplenote.vim'
Bundle 'mattn/gist-vim'
" =================================================
if bundles_installed == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif
filetype plugin indent on
