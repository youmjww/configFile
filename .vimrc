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

" react
source ~/.vimReactPlugin

" php
source ~/.vimPhpPlugin

call neobundle#end()

filetype plugin indent on

NeoBundleCheck


" php
source ~/.vimPhpConfig
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
