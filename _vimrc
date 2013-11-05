
"-------------------------------------------------------------------------------
" Plugin manager: neobundle
"-------------------------------------------------------------------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/neobundle.vim/
  call neobundle#rc(expand('~/dotfiles/vimfiles/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }

" Editing
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-altr'
NeoBundle 'osyo-manga/vim-textobj-multiblock'
NeoBundle 'surround.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'Align'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tyru/operator-html-escape.vim'
NeoBundle 'tyru/operator-camelize.vim'
NeoBundle 'tek/vim-operator-assign'
NeoBundle 'rhysd/vim-operator-evalruby'
NeoBundle 'pekepeke/vim-operator-tabular'
NeoBundle 'emonkak/vim-operator-sort'
NeoBundleLazy 'tmhedberg/matchit.git'
NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
  \ 'autoload': {
    \ 'insert': 1,
  \ }
\ }
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'smartchr'
" NeoBundle 'YankRing.vim'
NeoBundle 't9md/vim-textmanip'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'SyntaxComplete'
NeoBundleLazy 'ecomba/vim-ruby-refactoring'
NeoBundleLazy 'rubycomplete.vim'
NeoBundleLazy 'Rip-Rip/clang_complete'
NeoBundleLazy 'Shougo/neosnippet', {
  \ 'autoload': {
    \ 'commands': ['NeoSnippetEdit', 'NeoSnippetSource'],
    \ 'filetypes': 'snippet',
    \ 'insert': 1,
    \ 'unite_sources': ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
  \ }
\ }
NeoBundle 'Townk/vim-autoclose'

" Utils
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
NeoBundle 'gitv'
NeoBundle 'Shougo/unite.vim'
NeoBundleLazy 'Shougo/vimshell.vim', {
  \ 'autoload': { 'commands': ['VimShell'] },
  \ 'depends': ['Shougo/vimproc'],
\ }
NeoBundle 'othree/eregex.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'qtmplsel.vim'
NeoBundle 'glidenote/memolist.vim'
NeoBundle 'Shougo/vinarise.vim'
" NeoBundle 'SearchComplete'
NeoBundle 'kana/vim-fakeclip.git'
" NeoBundle 'kana/vim-altr'
NeoBundle 'airblade/vim-rooter'
" NeoBundle 'davidoc/taskpaper.vim'
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'kana/vim-submode'

" Appearance
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'osyo-manga/vim-anzu'
" NeoBundle 'skammer/vim-css-color'

" Syntax
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'claco/jasmine.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'msanders/cocoa.vim'
NeoBundle 'eraserhd/vim-ios'


NeoBundleCheck
filetype plugin indent on


"-------------------------------------------------------------------------------
" Plugin manager: pathogen
"-------------------------------------------------------------------------------
if has('vim_starting')
  filetype off
  call pathogen#runtime_append_all_bundles()
  " call pathogen#helptags()
  set helpfile=$VIMRUNTIME/doc/help.txt
  filetype plugin on
endif


"-------------------------------------------------------------------------------
" Basics
"-------------------------------------------------------------------------------
" autocmd が複数登録されないようにリセット
augroup vimrc
  autocmd!
augroup END

" Vi 互換なし
set nocompatible

" C-s とかのキーバインディングを有効にする
silent !stty -ixon > /dev/null 2>/dev/null
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" キーマップリーダー
let mapleader = ','

" vs のとき右側に分割する
set splitright

" 全角記号の幅
set ambiwidth=double

" スクロール時の余白確保
set scrolloff=5

" 一行に長い文章を書いていても自動折り返しをしない
set textwidth=0

" バックアップ取らない
set nobackup

" 他で書き換えられたら自動で読み直す
set autoread

" スワップファイル作らない
set noswapfile

" 編集中でも他のファイルを開けるようにする
set hidden

" バックスペースでなんでも消せるように
set backspace=indent,eol,start

" テキスト整形オプション，マルチバイト系を追加
set formatoptions=lmoq

" ビープをならさない
set vb t_vb=

" Explore の初期ディレクトリ
set browsedir=buffer

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" コマンドをステータス行に表示
set showcmd

" 現在のモードを表示
set showmode

" viminfoファイルの設定
set viminfo='50,<1000,s100,\"50

" モードラインは無効
set modelines=0

" コマンド補完を強化
set wildmenu
set wildmode=list:full

" コマンド・検索パターンの履歴数
set history=1000

" 補完に辞書ファイル追加
set complete& complete+=k

" ヤンクした文字は、システムのクリップボードに入れる
set clipboard=unnamed

" インクリメント / デクリメント
set nf=alpha,hex

" IME を無効化
set imdisable

" vimrc の編集と反映
command! EditVimrc edit $MYVIMRC
autocmd vimrc BufWritePost *vimrc source $MYVIMRC
autocmd vimrc BufWritePost *gvimrc if has('gui_running') | source $MYGVIMRC | endif

" C-c と Esc の挙動を同じに
inoremap <C-c> <ESC>

" Undo / Redo
nnoremap U :redo<CR>
inoremap <C-u> <C-o>u
inoremap <C-S-u> <C-o>U

" タブページ
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-w><C-t> :tabnew<CR>
inoremap <C-w>t <C-o>:tabnew<CR>
inoremap <C-w><C-t> <C-o>:tabnew<CR>
nnoremap <C-w>c :bd
inoremap <C-w><C-c> <C-o>:bd<CR>


"-------------------------------------------------------------------------------
" Apperance
"-------------------------------------------------------------------------------
" Color scheme
set background=dark
set t_Co=256
colorscheme My-Tomorrow-Night-Bright

" シンタックスハイライト
syntax enable

" 常にステータスラインを表示
set laststatus=2

" 常にタブバーを表示
set showtabline=2

" 括弧の対応をハイライト
set showmatch

" 行番号表示
set number

" カーソル行をハイライトしない
" シンタックスハイライトがクソ遅くなる
set nocursorline

" 不可視文字の表示
set list
" set listchars=tab:▸\ ,trail:˽
set listchars=tab:▸\ ,

" 印字不可能文字を16進数で表示
set display=uhex

" 全角スペースを可視化
autocmd vimrc VimEnter,WinEnter * match ZenkakuSpace /　/

" 行末の \s をハイライト
autocmd vimrc VimEnter,WinEnter * match TrailingSpace /\s\+$/

" コマンド実行中は再描画しない
set lazyredraw

" 高速ターミナル接続を行う
set ttyfast


"-------------------------------------------------------------------------------
" Tags
"-------------------------------------------------------------------------------
if has("autochdir")
  " 編集しているファイルのディレクトリに自動で移動
  set autochdir
  set tags=tags;
else
  set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
endif

"「進む」
nnoremap tn :tn

"「戻る」
nnoremap tp :tp

"履歴一覧
nnoremap tl :tags


"-------------------------------------------------------------------------------
" Search
"-------------------------------------------------------------------------------
" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

" Escの2回押しでハイライト消去
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" 選択した文字列を検索
vnoremap // y/=escape(@", '\\/.*$^~')

" 選択した文字列を置換
vnoremap /r "xy:%s/=escape(@x, '\\/.*$^~')//gc

" s*置換後文字列/gでカーソル下のキーワードを置換
nnoremap s* ':%s/\<' . expand('') . '\>/'

" 検索語が真ん中に来るようにする
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" 検索パターンの入力時に自動エスケープ
cnoremap <expr> /  getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ?  getcmdtype() == '?' ? '\?' : '?'


"-------------------------------------------------------------------------------
" Encoding
"-------------------------------------------------------------------------------
set encoding=utf-8
set fileencodings=ucs_bom,utf8,ucs-2le,ucs-2
set fileformats=unix,dos,mac

" 文字コードの自動認識
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = s:fileencodings_default .','. &fileencodings
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif

" 日本語を含まない場合は fileencoding に encoding を使うようにする
function! AU_ReCheck_FENC()
  if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
    let &fileencoding=&encoding
  endif
endfunction

autocmd vimrc BufReadPost * call AU_ReCheck_FENC()

" ワイルドカードで表示するときに優先度を低くする拡張子
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" 指定文字コードで強制的にファイルを開く
command! Cp932 edit ++enc=cp932
command! Eucjp edit ++enc=euc-jp
command! Iso2022jp edit ++enc=iso-2022-jp
command! Utf8 edit ++enc=utf-8
command! Jis Iso2022jp
command! Sjis Cp932


"-------------------------------------------------------------------------------
" Editing
"-------------------------------------------------------------------------------
" 自動でインデント
set noautoindent
set smartindent
set cindent
set smarttab
set noexpandtab

" softtabstop は Tab キー押し下げ時の挿入される空白の量
" 0 の場合は tabstop と同じ
set tabstop=2 shiftwidth=2 softtabstop=0

" ファイルタイプの検索を有効にする
filetype plugin on

" そのファイルタイプにあわせたインデントを利用する
filetype indent on

" yeでそのカーソル位置にある単語をレジスタに追加
nmap ye :let @"=expand("")

" Visualモードでのpで選択範囲をレジスタの内容に置き換える
vnoremap p :let current_reg = @"gvdi=current_reg

" :Ptでインデントモード切替
command! Pt :set paste!

" Emacs のカーソル移動
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-j> <CR>
inoremap <C-d> <Del>
inoremap <silent> <C-h> <C-g>u<C-h>
inoremap <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>d$')

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Del>
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>

nnoremap <C-j> <CR>
nnoremap <C-n> <Down>
nnoremap <C-p> <Up>

" 括弧までを消したり置き換えたりする
" http://vim-users.jp/2011/04/hack214/
vnoremap ( t(
vnoremap ) t)
vnoremap ] t]
vnoremap [ t[
onoremap ( t(
onoremap ) t)
onoremap ] t]
onoremap [ t[

" 削除したものをレジスタに保存しないようにする
nnoremap x "_x
nnoremap c "_c

" ヤンク
nnoremap Y y$

" 保存時に行末の空白を除去する
autocmd vimrc BufWritePre *
  \ if &ft != 'markdown' |
    \ :%s/\s\+$//ge |
  \ endif

" 保存時に tab をスペースに変換する (expandtab が設定されているなら)
autocmd vimrc BufWritePre * if &et | exec "%s/\t/  /ge" | endif

" 日時の自動入力
inoremap <expr> ~df strftime('%Y/%m/%d %H:%M:%S')
inoremap <expr> ~dd strftime('%Y/%m/%d')
inoremap <expr> ~dt strftime('%H:%M:%S')

" ファイルを開いた時に最後のカーソル位置を再現する
autocmd vimrc BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" 前回のマーク情報をリセット
autocmd BufReadPost * delmarks!

" automatically change the current directory
" autocmd vimrc BufEnter * silent! lcd %:p:h

" 各種エンコーディングで開き直す
command! -bang -nargs=? Utf8
  \ edit<bang> ++enc=utf-8 <args>
command! -bang -nargs=? Sjis
  \ edit<bang> ++enc=cp932 <args>
command! -bang -nargs=? Euc
  \ edit<bang> ++enc=eucjp <args>

" 矩形選択で連番を付ける: 3co
nnoremap <silent> co :ContinuousNumber <C-a><CR>
vnoremap <silent> co :ContinuousNumber <C-a><CR>
command! -count -nargs=1 ContinuousNumber
    \ let c = col('.') |
    \ for n in range(1, <count>?<count>-line('.'):1) |
      \ exec 'normal! j' . n . <q-args> |
      \ call cursor('.', c) |
    \ endfor

" 自動的にディレクトリを作成する
" http://vim-users.jp/2011/02/hack202/
augroup vimrc_auto_mkdir
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)
    if !isdirectory(a:dir) && (
      \ a:force ||
      \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$'
    \ )
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction
augroup END

" 閉じタグを補完する
augroup complete_closing_tag
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" 編集中ファイルのファイル名を変更する
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))

" 編集中ファイルのファイル名を変更する
command! -nargs=0 Delete call delete(expand('%'))|q!


"-------------------------------------------------------------------------------
" Sticky shift
"-------------------------------------------------------------------------------
nmap <expr> ; <SID>sticky_func()
imap <expr> ; <SID>sticky_func()
vmap <expr> ; <SID>sticky_func()
cmap <expr> ; <SID>sticky_func()
smap <expr> ; <SID>sticky_func()

function! s:sticky_func()
  let l:sticky_table_jis = {
    \ ',': '<', '.': '>', '/': '?',
    \ '1': '!', '2': '"', '3': '#', '4': '$', '5': '%',
    \ '6': '&', '7': "'", '8': '(', '9': ')', '0': '0', '-': '=', '^': '~',
    \ ';': '+', '[': '{', ']': '}', '@': '`', ':': '*', '\': '|',
  \ }
  let l:sticky_table_us = {
    \ ',': '<', '.': '>', '/': '?',
    \ '1': '!', '2': '@', '3': '#', '4': '$', '5': '%',
    \ '6': '^', '7': '&', '8': '*', '9': '(', '0': ')', '-': '_', '=': '+',
    \ ';': ':', '[': '{', ']': '}', '`': '~', "'": "\"", '\': '|',
  \ }
  let l:special_table = {
    \ "\<ESC>": "\<ESC>",
    \ "\<C-c>": "\<ESC>",
    \ "\<Space>": ';',
    \ "\<CR>" : ";\<CR>",
    \ "\<C-j>" : ";\<CR>",
  \ }

  let l:key = getchar()
  if nr2char(l:key) =~ '\l'
    return toupper(nr2char(l:key))
  elseif has_key(l:sticky_table_jis, nr2char(l:key))
    return l:sticky_table_jis[nr2char(l:key)]
  elseif has_key(l:special_table, nr2char(l:key))
    return l:special_table[nr2char(l:key)]
  else
    return ''
  endif
endfunction


"-------------------------------------------------------------------------------
" Filetype specific
"-------------------------------------------------------------------------------
" ソフトタブ
augroup use_soft_tabs
  autocmd!
  autocmd FileType yaml   setlocal et
  autocmd FileType diff   setlocal et
  autocmd FileType eruby  setlocal et
  autocmd FileType coffee setlocal et
  autocmd FileType ruby   setlocal et
  autocmd FileType haml   setlocal et
  autocmd FileType sh     setlocal et
  autocmd FileType sql    setlocal et
  autocmd FileType vim    setlocal et
  autocmd FileType yaml   setlocal et
  autocmd FileType scala  setlocal et
  autocmd FileType scheme setlocal et
augroup END

" 文字コードを強制
augroup force_encordings
  autocmd!
  autocmd FileType svn   setlocal fenc=utf-8
  autocmd FileType js    setlocal fenc=utf-8
  autocmd FileType css   setlocal fenc=utf-8
  autocmd FileType html  setlocal fenc=utf-8
  autocmd FileType xml   setlocal fenc=utf-8
  autocmd FileType java  setlocal fenc=utf-8
  autocmd FileType scala setlocal fenc=utf-8
  autocmd FileType yml   setlocal fenc=utf-8
  autocmd FileType cvs   setlocal fenc=euc-jp
augroup END

" ファイルタイプのエリアス
augroup filetype_aliases
  autocmd!
  autocmd FileType js        setf javascript
  autocmd FileType cs        setf coffee
  autocmd FileType objcpp    setf objc
  autocmd FileType scss.css  setf scss
  autocmd FileType coffee.js setf coffee
  autocmd FileType slim.html setf slim
  autocmd FileType haml.html setf haml
augroup END


"-------------------------------------------------------------------------------
" Plugin: NeoComplete
"-------------------------------------------------------------------------------
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplcache_max_list = 20
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#disable_auto_complete = 0
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_insert_char_pre = 1
set completeopt& completeopt-=preview

let $DICTDIR = $HOME . '/dotfiles/dict'
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default':    '',
  \ 'vimshell':   $HOME . '/.vimshell_hist',
  \ 'ruby':       $DICTDIR . '/ruby.dict',
  \ 'java':       $DICTDIR . '/java.dict',
  \ 'javascript': $DICTDIR . '/javascript.dict',
  \ 'coffee':     $DICTDIR . '/javascript.dict',
  \ 'html':       $DICTDIR . '/html.dict',
  \ 'php':        $DICTDIR . '/php.dict',
  \ 'objc':       $DICTDIR . '/objc.dict',
  \ 'perl':       $DICTDIR . '/perl.dict',
  \ 'scala':      $DICTDIR . '/scala.dict',
\ }

if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif

" キャッシュしないファイル名
let g:neocomplete#sources#buffer#disabled_pattern = '\.log\|\.log\.\|\.jax'

" 自動補完を行わないバッファ名
let g:neocomplete#lock_buffer_name_pattern = '\.log\|\.log\.\|.*quickrun.*\|.jax'

let g:neocomplete#keyword_patterns['default'] = '\h\w*'
let g:neocomplete#keyword_patterns.perl = '\h\w*->\h\w*\|\h\w*::\w*'

inoremap <expr> <TAB> pumvisible() ? neocomplete#close_popup() : "\<TAB>"

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

inoremap <expr> <C-f> pumvisible() ? neocomplete#cancel_popup() . "\<Right>" : "\<Right>"
inoremap <expr> <C-b> pumvisible() ? neocomplete#cancel_popup() . "\<Left>" : "\<Left>"
inoremap <expr> <C-a> pumvisible() ? neocomplete#cancel_popup() . "\<Home>" : "\<Home>"
inoremap <expr> <C-e> pumvisible() ? neocomplete#cancel_popup() . "\<End>" : "\<End>"
inoremap <expr> <Space> pumvisible() ? neocomplete#cancel_popup() . "\<Space>" : "\<Space>"
inoremap <expr> <C-c> pumvisible() ? neocomplete#cancel_popup() : "\<ESC>"
inoremap <expr> <C-j> pumvisible() ? neocomplete#close_popup() : "\<CR>"

" Omni completion
augroup omni_completion_funcs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.go = '\h\w*\.\?'
let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

let g:clang_complete_auto = 0
let g:clang_auto_select = 0
" let g:clang_use_library = 1


"-------------------------------------------------------------------------------
" Plugin: NeoSnippet
"-------------------------------------------------------------------------------
let g:neosnippet#disable_select_mode_mappings = 0
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = '~/.vim/snippets, ~/.vim/snipmate-snippets/snippets, ~/.vim/snipmate-snippets-rubymotion/snippets'

inoremap <expr> <TAB> neosnippet#expandable_or_jumpable()
  \ ? neosnippet#expand_or_jump_impl()
  \ : pumvisible()
    \ ? "\<Down>" . neocomplete#close_popup()
    \ : emmet#isExpandable()
        \ ? "\<C-r>=emmet#expandAbbr(0, '')<Cr><Right>"
        \ : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=i
endif


"-------------------------------------------------------------------------------
" Plugin: SyntaxComplete
"-------------------------------------------------------------------------------
autocmd vimrc Filetype *
  \ if &omnifunc == "" |
    \ setlocal omnifunc=syntaxcomplete#Complete |
  \ endif


"-------------------------------------------------------------------------------
" Plugin: Ruby complete
"-------------------------------------------------------------------------------
let g:rubycomplete_rails = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_include_object = 1
let g:rubycomplete_include_object_space = 1

" autocmd vimrc FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete


"-------------------------------------------------------------------------------
" Plugin: TextManip
"-------------------------------------------------------------------------------
" 選択したテキストの移動
xmap <C-j> <Plug>(textmanip-move-down)
xmap <C-k> <Plug>(textmanip-move-up)
xmap <C-h> <Plug>(textmanip-move-left)
xmap <C-l> <Plug>(textmanip-move-right)

" 行の複製
vnoremap <C-o> <Plug>(textmanip-duplicate-down)
nnoremap <C-o> <Plug>(textmanip-duplicate-down)


"-------------------------------------------------------------------------------
" Plugin: Smartchr
"-------------------------------------------------------------------------------
inoremap <expr> , smartchr#one_of(', ', ',')
inoremap <expr> : smartchr#one_of(':', '::', '=>')
inoremap <expr> { smartchr#one_of('{', '#{', '{{{')
autocmd vimrc FileType c inoremap <buffer> <expr> . smartchr#loop('.',  '->')


"-------------------------------------------------------------------------------
" Plugin: OpenBrowser
"-------------------------------------------------------------------------------
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nnoremap gx <Plug>(openbrowser-smart-search)
vnoremap gx <Plug>(openbrowser-smart-search)


"-------------------------------------------------------------------------------
" Plugin: Emmet
"-------------------------------------------------------------------------------
let g:user_emmet_mode = 'i'
let g:user_emmet_leader_key = '<c-y>'
let g:user_emmet_settings = {
  \ 'lang': 'ja',
  \ 'indentation': '  ',
  \ 'html' : {
    \ 'indentation': "\t",
  \ },
\ }


"-------------------------------------------------------------------------------
" Plugin: textobj-multiblock
"-------------------------------------------------------------------------------
omap ab <Plug>(textobj-multiblock-a)
omap ib <Plug>(textobj-multiblock-i)
vmap ab <Plug>(textobj-multiblock-a)
vmap ib <Plug>(textobj-multiblock-i)


"-------------------------------------------------------------------------------
" Plugin: eregex
"-------------------------------------------------------------------------------
let g:eregex_default_enable = 0


"-------------------------------------------------------------------------------
" Plugin: surround
"-------------------------------------------------------------------------------
nmap ,( csw(
nmap ,) csw)
nmap ,{ csw{
nmap ,} csw}
nmap ,[ csw[
nmap ,] csw]
nmap ,' csw'
nmap ," csw"


"-------------------------------------------------------------------------------
" Plugin: tComment
"-------------------------------------------------------------------------------
let g:tcommentMapLeader1 = '<C-/>'
let g:tcommentMapLeader2 = '<Leader>'
let g:tcommentMapLeaderOp1 = 'gc'
let g:tcommentMapLeaderOp2 = 'gC'
let g:tcommentGuessFileType = 1


"-------------------------------------------------------------------------------
" Plugin: Session
"-------------------------------------------------------------------------------
let g:session_autosave = 0
let g:session_autoload = 0
let g:session_default_to_last = 0
let g:session_default_overwrite = 1
let g:session_command_aliases = 1

" cab os OpenSession
" cab cs CloseSession
" cab ss SaveSession


"-------------------------------------------------------------------------------
" Plugin: NERD Tree
"-------------------------------------------------------------------------------
let g:NERDSpaceDelims = 1
let g:NERDShutUp = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', '\.sass-cache$', '\.git$']

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_startup_cd = 0
" let g:nerdtree_tabs_open_on_new_tab = 0

nnoremap <C-s> :NERDTreeTabsToggle<CR>


"-------------------------------------------------------------------------------
" Plugin: Rooter
"-------------------------------------------------------------------------------
let g:rooter_patterns = ['.git', '.git/', 'Rakefile', 'Gemfile', 'package.json', '.vimprojectroot']
" let g:rooter_use_lcd = 1
let g:rooter_manual_only = 1
let g:rooter_change_directory_for_non_project_files = 1
autocmd vimrc BufEnter * :Rooter


"-------------------------------------------------------------------------------
" Plugin: Multi Cursor
"-------------------------------------------------------------------------------
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_key = ',c'
let g:multi_cursor_next_key = 'n'
let g:multi_cursor_prev_key = 'N'
let g:multi_cursor_skip_key = 'g'
let g:multi_cursor_quit_key = '<C-c>'


"-------------------------------------------------------------------------------
" Plugin: Submode
"-------------------------------------------------------------------------------
let g:submode_leave_with_key = 1

call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>-')
call submode#map('winsize', 'n', '', '-', '<C-w>+')
call submode#enter_with('changetab', 'n', '', 'gt', 'gt')
call submode#enter_with('changetab', 'n', '', 'gT', 'gT')
call submode#map('changetab', 'n', '', 't', 'gt')
call submode#map('changetab', 'n', '', 'T', 'gT')


"-------------------------------------------------------------------------------
" Plugin: Memo List
"-------------------------------------------------------------------------------
let g:memolist_memo_suffix = 'md'
let g:memolist_path = '~/Dropbox/memo'

nnoremap ,mn :MemoNew<CR>
nnoremap ,mg :MemoGrep<CR>
nnoremap ,ml :MemoList<CR>
nnoremap ,mf :exe "CtrlP" g:memolist_path<CR><f5>


"-------------------------------------------------------------------------------
" Plugin: Align
"-------------------------------------------------------------------------------
xnoremap <silent> a: :Alignta 01 :<CR>
xnoremap al :Alignta<Space>


"-------------------------------------------------------------------------------
" Plugin: Switch
"-------------------------------------------------------------------------------
let g:switch_custom_definitions =
  \ [
    \ ['public', 'protected', 'private'],
    \ ['on', 'off'],
    \ ['it', 'specify'],
    \ ['describe', 'context'],
    \ ['and', 'or']
  \ ]

nnoremap - :Switch<CR>


"-------------------------------------------------------------------------------
" Plugin: Ruby refactoring
"-------------------------------------------------------------------------------
nmap ga <Plug>(altr-forward)
nmap gA <Plug>(altr-back)

" Header files
call altr#define('%.c', '%.h', '%.m')

" Rails
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%s.rb')
call altr#define('app/controllers/%.rb', 'spec/controllers/%_spec.rb')
call altr#define('app/helpers/%.rb', 'spec/helpers/%_spec.rb')


"-------------------------------------------------------------------------------
" Plugin: Ruby refactoring
"-------------------------------------------------------------------------------
" メソッドに引数を追加する
nnoremap <Leader>rap :RAddParameter<CR>

" 一行で書かれた条件文を複数行に変換する
nnoremap <Leader>rcpc :RConvertPostConditional<CR>

" 選択部分を RSpec の "let(:hoge) { fuga }" の形式に切り出す
nnoremap <Leader>rel :RExtractLet<CR>

" 選択部分を定数として切り出す
vnoremap <Leader>rec :RExtractConstant<CR>

" 選択部分を変数として切り出す
vnoremap <Leader>relv :RExtractLocalVariable<CR>

" 一時変数を取り除く
nnoremap <Leader>rit :RInlineTemp<CR>

" ローカル変数をリネームする
vnoremap <Leader>rrlv :RRenameLocalVariable<CR>

" インスタンス変数をリネームする
vnoremap <Leader>rriv :RRenameInstanceVariable<CR>

" 選択部分をメソッドに切り出す
vnoremap <Leader>rem :RExtractMethod<CR>


"-------------------------------------------------------------------------------
" Plugin: Endwise
"-------------------------------------------------------------------------------
let g:endwise_no_mappings = 1
imap <C-j> <CR><Plug>DiscretionaryEnd


"-------------------------------------------------------------------------------
" Plugin: YankRing
"-------------------------------------------------------------------------------
let g:yankring_replace_n_pkey = '<M-p>'
let g:yankring_replace_n_nkey = '<M-n>'
nnoremap <Space><Space>y :YRShow<CR>


"-------------------------------------------------------------------------------
" Plugin: indent line
"-------------------------------------------------------------------------------
let g:indentLine_char = '¦'
let g:indentLine_color_term = 234
let g:indentLine_color_gui = '#2a2a2a'


"-------------------------------------------------------------------------------
" Plugin: Quickrun
"-------------------------------------------------------------------------------
let g:quickrun_config = {}
let g:quickrun_config._ = { 'runner': 'vimproc' }
let g:quickrun_config['ruby.rspec'] = { 'command': 'rspec', 'cmdopt': 'bundle exec', 'exec': '%o %c %s' }
let g:quickrun_config.markdown = {
  \ 'outputter': 'null',
  \ 'command':   'open',
  \ 'cmdopt':    '-a',
  \ 'args':      'Marked',
  \ 'exec':      '%c %o %a %s',
\ }


"-------------------------------------------------------------------------------
" Plugin: Unite
"-------------------------------------------------------------------------------
let g:unite_enable_start_insert = 1
let g:unite_winheight = 10
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
" let g:unite_ignore_source_files = []

let s:file_rec_ignore_pattern = (unite#sources#rec#define()[0]['ignore_pattern']) . '\|\.\%(jpe\?g\|png\|gif\|pdf\)$'
call unite#custom#source('file_rec', 'ignore_pattern', s:file_rec_ignore_pattern)
call unite#custom#source('file_rec/async', 'ignore_pattern', s:file_rec_ignore_pattern)
call unite#custom#source('grep', 'ignore_pattern', s:file_rec_ignore_pattern)

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

nnoremap <C-q> :Unite -buffer-name=files file_rec/async file/new directory/new<CR>
autocmd! vimrc FileType unite call s:unite_my_settings()

function! s:unite_my_settings()
  nmap <buffer> <C-q> <Plug>(unite_exit)
  imap <buffer> <C-q> <Plug>(unite_exit)
  inoremap <C-d> <Del>
  inoremap <silent> <C-h> <C-g>u<C-h>
  inoremap <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>d$')

  let unite = unite#get_current_unite()
  if unite.buffer_name =~# '^search'
    nnoremap <silent><buffer><expr> r unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r unite#do_action('rename')
  endif
endfunction


"-------------------------------------------------------------------------------
" Plugin: Anz
"-------------------------------------------------------------------------------
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" autocmd vimrc CursorHold,CursorHoldI,WinLeave,TabLeave * call anzu#clear_search_status()


"-------------------------------------------------------------------------------
" Plugin: Lightline
"-------------------------------------------------------------------------------
let g:lightline = {
  \ 'mode_map': { 'c': 'NORMAL' },
  \ 'active': {
    \ 'left': [
      \ ['mode', 'paste'],
      \ ['fugitive','filename'],
      \ ['ctrlpmark', 'anzu']
    \ ],
    \ 'right': [
      \ ['syntastic', 'lineinfo', 'percent'],
      \ ['filetype'],
      \ ['fileencoding']
    \ ]
  \ },
  \ 'component_function': {
    \ 'modified':     'LightlineModified',
    \ 'readonly':     'LightlineReadonly',
    \ 'fugitive':     'LightlineFugitive',
    \ 'filename':     'LightlineFilename',
    \ 'fileformat':   'LightlineFileformat',
    \ 'filetype':     'LightlineFiletype',
    \ 'fileencoding': 'LightlineFileencoding',
    \ 'mode':         'LightlineMode',
    \ 'ctrlpmark':    'LightlineCtrlPMark',
    \ 'anzu':         'anzu#search_status',
  \ },
  \ 'component_expand': {
    \ 'syntastic': 'SyntasticStatuslineFlag',
  \ },
  \ 'component_type': {
    \ 'syntastic': 'error',
  \ },
  \ 'subseparator': { 'left': '│', 'right': '│' },
\ }

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

if has('gui_running')
  let g:lightline.separator = { 'left': "\u2b80", 'right': "\u2b82" }
  let g:lightline.subseparator = { 'left': "\u2b81", 'right': "\u2b83" }
endif

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  let icon = has("gui_running") ? "\u2b64" : "!!"
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? icon : ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
    \ fname == '__Tagbar__' ? g:lightline.fname :
    \ fname =~ '__Gundo\|NERD_tree' ? '' :
    \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
    \ &ft == 'unite' ? unite#get_status_string() :
    \ &ft == 'vimshell' ? vimshell#get_status_string() :
    \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
    \ ('' != fname ? fname : '[No Name]') .
    \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let icon = has("gui_running") ? "\u2b60 " : "~ "
      let _ = fugitive#head()
      return strlen(_) ? icon._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'plain') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
    \ fname == 'ControlP' ? 'CtrlP' :
    \ fname == '__Gundo__' ? 'Gundo' :
    \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
    \ fname =~ 'NERD_tree' ? 'NERDTree' :
    \ &ft == 'unite' ? 'Unite' :
    \ &ft == 'vimfiler' ? 'VimFiler' :
    \ &ft == 'vimshell' ? 'VimShell' :
    \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:lightline.ctrlp_regex = ''
let g:lightline.ctrlp_prev = ''
let g:lightline.ctrlp_item = ''
let g:lightline.ctrlp_next = ''

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
\ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

function! LightlineCtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
  endif
  return ''
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
  function! s:syntastic()
    SyntasticCheck
    call lightline#update()
  endfunction
augroup END


"-------------------------------------------------------------------------------
" Function: SyntaxInfo
"-------------------------------------------------------------------------------
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction

function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
    \ "name": name,
    \ "ctermfg": ctermfg,
    \ "ctermbg": ctermbg,
    \ "guifg": guifg,
    \ "guibg": guibg
  \ }
endfunction

function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
    \ " ctermfg: " . baseSyn.ctermfg .
    \ " ctermbg: " . baseSyn.ctermbg .
    \ " guifg: " . baseSyn.guifg .
    \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
    \ " ctermfg: " . linkedSyn.ctermfg .
    \ " ctermbg: " . linkedSyn.ctermbg .
    \ " guifg: " . linkedSyn.guifg .
    \ " guibg: " . linkedSyn.guibg
endfunction

command! ScopeInfo call s:get_syn_info()

