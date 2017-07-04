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

call neobundle#end()
filetype plugin indent on

NeoBundleCheck





" 行番号の表示
set number

"シンタックスハイライト
syntax on

" タイトルバーにファイル名を表示
set title

" 全角文字が変になるのを防ぐ
set ambiwidth=double

" タブ関係
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent

" tabと空白を表示する
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

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
set clipboard=unnamedplus

" マウスを有効化
set mouse=a

" 検索結果をハイライトする
set hlsearch
" F3でハイライトを解除する
nnoremap <F3> :noh<CR>

" fでディレクトリツリーを開く
nnoremap <Space>f  :NERDTree<CR>

" Hで右端へ移動
noremap <S-h>   ^

" Lで左端へ移動
noremap <S-l>   $

" KLで上下へ移動
noremap <S-j>   }
noremap <S-k>   {
