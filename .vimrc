colorscheme elflord
set number		"　行番号を表示
set autoindent	"　改行後に前の行インデントを継続する
set autoread	"　外部でファイルが編集された場合は読み直す
set nobackup	"　ファイル保存時にバックアップファイルを作らない
set noswapfile	"　ファイル編集中にスワップファイルを作らない
set noundofile	"　ファイル編集中にスワップファイルを作らない
set incsearch	"　インクリメンタルサーチを行う
set list		"　不可視文字を表示する
" listで表示される文字のフォーマットを指定する
" set listchars=eol:~,tab:>\ ,extends:<
" Tab、行末の半角スペースを明示的に表示する
" set listchars=tab:^\ ,trail:~
set listchars=tab:>\ ,trail:-
set showmatch	"　対応するカッコを強調表示
set matchtime=1	"　対応カッコの強調表示時間を0.1秒の1バイトする
set ignorecase	"　大文字と小文字を区別しない
set smartcase	"　大文字と小文字が混在させて検索した時に限り大文字を区別する
set tabstop=4	"　文字入力後tabキーを押したとき文字数が4の倍数になるまで半角スペースを挿入する
set smarttab	"　行頭のtabにshiftwidth分のタブ文字を挿入する　
set smartindent	"	前の行に{などがあると、自動的にshiftwidthで指定した幅でインデントが入る
set shiftwidth=4"
set shellslash	"　windowsでもパスの区切り文字をスラッシュで扱えるようになる
set cursorline	"　カーソル行の背景色を変える
set hidden		"　ファイルを保存してなくても別のファイルを開けるようにする
set confirm		"　保存してないファイルが有るときは終了前に確認する
set showcmd		"　入力中のコマンドを表示する
set visualbell t_vb= "　ビープ音全て無効
set noerrorbells	"　エラーメッセージ表示時にビープ音を鳴らさない
set cinoptions=g0,N-si	"　C++のスコープ宣言を行頭へ/namespace内部をインデントしない
set history=10000
set shellpipe=
autocmd InsertLeave * set iminsert=0 imsearch=0

"key mapping
imap <c-j> <esc>
nnoremap Y y$	"　カーソルから行末までをヤンク
"nnoremap + <C-a>"　数値のインクリメントを+に
"nnoremap - <C-x>"　数値のデクリメントを-に

"バイナリ編集(xxd)モード（vim -b での起動、もしくは *.bin ファイルを開くと発動します）
"augroup BinaryXXD
"  autocmd!
"  autocmd BufReadPre  *.bin let &binary =1
"  autocmd BufReadPost * if &binary | silent %!xxd -g 1
"  autocmd BufReadPost * set ft=xxd | endif
"  autocmd BufWritePre * if &binary | %!xxd -r | endif
"  autocmd BufWritePost * if &binary | silent %!xxd -g 1
"  autocmd BufWritePost * set nomod | endif
"augroup END

"encoding

let &termencoding = &encoding
set encoding=utf-8

"yank

if has('gui') || has('xterm_clipboard')
set clipboard=unnamed
endif

