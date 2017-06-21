

syntax on

set lines=70
set columns=240
set lsp=-1


set guifont=Migu_1M_Regular:h13


set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8



set backupdir=~/.vim/tmp

set showcmd
set autoindent
set ruler
set visualbell
set confirm
set mouse=a
set cmdheight=2


set number

"ステータスラインの設定
set laststatus=2
set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]







set expandtab
set shiftwidth=2
set softtabstop=2


set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')





"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <expr><tab>    neosnippet#expandable_or_jumpable()  ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
smap <expr><tab>    neosnippet#expandable_or_jumpable()  ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>" 

imap <C-j> <esc>
nmap <C-j> <esc>
vmap <C-j> <esc>
smap <C-j> <esc>









" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'


if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
endif

" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
call dein#begin(s:dein_dir)

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('nanotech/jellybeans.vim')
call dein#add('Shougo/unite.vim')


" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


"NeoComplete設定
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'
highlight Pmenu ctermbg=248 guibg=#606060
highlight PmenuSel ctermbg=159 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6




let g:neosnippet#snippets_directory='~/.vim/snippets/'


colorscheme jellybeans
syntax on



set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8


