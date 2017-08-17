" プラグインの管理のやつ
if &compatible
	set nocompatible
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 追加プラグイン
" ファイルエクスプローラ
NeoBundle 'scrooloose/nerdtree'

" reactのパッケージ
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'


" eslint
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'

let g:syntastic_javascript_checkers=['eslint']

" エラー行に sign を表示
let g:syntastic_enable_signs = 1
" location list を常に更新
let g:syntastic_always_populate_loc_list = 0
" location list を常に表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時にチェックを実行する
let g:syntastic_check_on_open = 1
" :wq で終了する時もチェックする
let g:syntastic_check_on_wq = 0


"PHPのプラグイン
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'violetyk/neocomplete-php.vim'
NeoBundle 'mattn/emmet-vim'


call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"--------------------------------------------------------------------------------------------------
"PHPの設定

"辞書ファイル
autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionary/php.dict filetype=php
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

"--------------------------------------------------------------------------------------------------
"基本設定

" 行番号の表示
set number

"シンタックスハイライト
syntax on

" タイトルバーにファイル名を表示
set title

" 全角文字が変になるのを防ぐ
set ambiwidth=double

" タブ関係
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent

" tabと空白を表示する
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

"tabを改行しても継続する
set autoindent
set smartindent

" 保存していないファイルがあっても別のファイルを開くことができる
set hidden

set history=50
" 矩形選択時に文字がなくても右にすすめるようにする
set virtualedit=block

" 左右のカーソル移動において、行を跨いで移動出来る様にする
set whichwrap=b,s,[,],<,>

" バックスペース有効化
set backspace=indent,eol,start

" よくわからんけど、見た目が変わるらしい
set wildmenu

" ペーストしてもインデントが崩れないようにする
set paste

" ヤンクしたらクリップボードに貼り付ける
set clipboard=unnamedplus,autoselect

" マウスを有効化
set mouse=a


"変換候補で表示される数を増やす
set pumheight=10

"現在の行をハイライト
set cursorline

" 検索結果をハイライトする
set hlsearch
" F3でハイライトを解除する
noremap <F3> :noh<CR>

" スペースfでディレクトリツリーを開く
noremap <Space>f  :NERDTree<CR>

" HLで右端左端へ移動
noremap <S-h>   ^
noremap <S-l>   $

" swpファイルを生成しないようにする
set noswapfile

" ｘで文字を削除してもヤンクされないようにする
noremap PP "0p
noremap x "_x
