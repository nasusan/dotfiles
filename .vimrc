syntax on
colorscheme elflord
"行番号を表示
set number
"デフォルトの改行コード
set fileformat=dos
"改行後に前の行インデントを継続する
set autoindent
"外部でファイルが編集された場合は読み直す
set autoread
"ファイル保存時にバックアップファイルを作らない
set nobackup
"ファイル編集中にスワップファイルを作らない
set noswapfile
"ファイル編集中にスワップファイルを作らない
set noundofile
"ファイル選択ダイアログの初期ディレクトリを、現在開いているファイルと同じにする
set browsedir=buffer
"インクリメンタルサーチを行う
set incsearch
"不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
"set listchars=eol:~,tab:>\ ,extends:<
"Tab、行末の半角スペースを明示的に表示する
"set listchars=tab:^\ ,trail:~
set listchars=tab:>\ ,trail:-
"対応するカッコを強調表示
set showmatch
"対応カッコの強調表示時間を0.1秒の1バイトする
set matchtime=1
"大文字と小文字を区別しない
set ignorecase
"大文字と小文字が混在させて検索した時に限り大文字を区別する
set smartcase
"文字入力後tabキーを押したとき文字数が4の倍数になるまで半角スペースを挿入する
set tabstop=4
"行頭のtabにshiftwidth分のタブ文字を挿入する　
set smarttab
"前の行に{などがあると、自動的にshiftwidthで指定した幅でインデントが入る
set smartindent
set shiftwidth=4"
"windowsでもパスの区切り文字をスラッシュで扱えるようになる
set shellslash
"カーソル行の背景色を変える
set cursorline
"ファイルを保存してなくても別のファイルを開けるようにする
set hidden
"保存してないファイルが有るときは終了前に確認する
set confirm
"入力中のコマンドを表示する
set showcmd
"ビープ音全て無効
set visualbell t_vb=
"エラーメッセージ表示時にビープ音を鳴らさない
set noerrorbells
"C++のスコープ宣言を行頭へ/namespace内部をインデントしない
set cinoptions=g0,N-si
"コマンド履歴保存数
set history=10000
"https://github.com/vim-jp/issues/issues/90
"https://qiita.com/morinatsu/items/f3cf8f3de725546a8026
set shellpipe=
"日本語ヘルプの優先度を上げる
:set helplang=ja,en
"InsertModeを抜けたとき日本語入力をオフにする
autocmd InsertLeave * set iminsert=0 imsearch=0

"key mapping
imap <c-j> <esc>
"カーソルから行末までをヤンク
nnoremap Y y$

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

"行末の空白をハイライトする
augroup HighlightTrailingSpaces
	autocmd!
	autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
	autocmd VimEnter,WinEnter * match TrailingSpaces /\t\+\|\s\+$/
augroup END

