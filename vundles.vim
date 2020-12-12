"
" dotphiles : https://github.com/jbriales/dotfiles
"
" Essential vim plugins!
"
" Authors:
"   Jesus Briales <jesusbriales@gmail.com>
"
" Based on:
"   Ben O'Hara <bohara@gmail.com>
"

call vundle#begin()
" Vundle itself
Bundle 'gmarik/vundle'
" Required for settings
Bundle 'chriskempson/base16-vim'

" General
if count(g:vundles, 'general')
  Bundle 'scrooloose/nerdtree'
  Bundle 'YankRing.vim'
  let g:yankring_history_dir = $HOME.'/.vim/'
  let g:yankring_history_file = '.yankring_history'
  ""Bundle 'tpope/vim-repeat'
  ""Bundle 'AutoClose'
  Bundle 'kien/ctrlp.vim'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'sudo.vim'
  Bundle 'bronson/vim-trailing-whitespace'
  Bundle 'mbbill/undotree'
  Bundle 'mhinz/vim-signify'
  Bundle 'Raimondi/delimitMate'
  Bundle 'itchyny/lightline.vim'
  Bundle 'rodjek/vim-puppet'
endif

if count(g:vundles, 'git')
  if executable('git')
    Bundle 'tpope/vim-fugitive'
  endif
endif

if count(g:vundles, 'hg')
 if executable('hg')
    Bundle 'k-takata/hg-vim'
  endif
endif
" General Programming
if count(g:vundles, 'programming')
  Bundle 'godlygeek/tabular'
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
  if v:version > 700
    Bundle 'scrooloose/syntastic'
    let g:syntastic_auto_jump = 0
    if executable('ctags')
      Bundle 'majutsushi/tagbar'
    endif
endif
endif

if count(g:vundles, 'completion')
  if v:version >= 705
    " Only if version is enough
    " NOTE: It would be enough with 7.4.1578+
    Bundle 'ycm-core/YouCompleteMe'
  endif
endif

" PHP
if count(g:vundles, 'php')
  Bundle 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  Bundle 'hynek/vim-python-pep8-indent'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

" Javascript
if count(g:vundles, 'javascript')
  Bundle 'leshill/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'HTML-AutoCloseTag'
  Bundle 'hail2u/vim-css3-syntax'
  Bundle 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  Bundle 'tpope/vim-rails'
endif

" Markdown
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_toc_autofit = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_math = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_autowrite = 1
"Bundle 'mzlogin/vim-markdown-toc'
"Bundle 'masukomi/vim-markdown-folding'
"let g:vmt_auto_update_on_save = 1
"let g:vmt_cycle_list_item_markers = 1
Bundle 'amiorin/vim-fenced-code-blocks'
Bundle 'KeitaNakamura/tex-conceal.vim'
let g:tex_conceal="abdgm"

" Misc
if count(g:vundles, 'misc')
  Bundle 'spf13/vim-preview'
  Bundle 'tpope/vim-cucumber'
  Bundle 'tpope/vim-rsi'
  Bundle 'markcornick/vim-vagrant'
  Bundle 'Puppet-Syntax-Highlighting'
  Bundle 'ekalinin/Dockerfile.vim'
  if v:version > 701
    Bundle 'zhaocai/GoldenView.Vim'
  endif
  let g:goldenview__enable_default_mapping=0
endif

" Latex
Bundle 'lervag/vimtex'
let g:tex_flavor = 'latex'

""" Code formatting
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

""" Language translation
Plugin 'voldikss/vim-translator'
let g:translator_target_lang = 'es'
let g:translator_source_lang = 'en'

call vundle#end()
" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()
