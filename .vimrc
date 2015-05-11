" VIM setting
"
" {{{ NeoBundle basic setting

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

filetype off
filetype plugin indent off

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" }}}
" {{{ vim-multiple-cursors
" NeoBundle 'git://github.com/terryma/vim-multiple-cursors'
" }}}
" {{{ vdebug
"NeoBundle 'git://github.com/joonty/vdebug.git'
"
"let g:vdebug_options = {
"            \    "break_on_open" : 0,
"            \    "continuous_mode"  : 1,
"            \ }
" }}}

" vim useful functions
NeoBundle 'L9'

" NeoBundle 'project.tar.gz'
" NeoBundle 'FuzzyFinder'
" Bundle 'Highlight-UnMatched-Brackets'
" NeoBundle 'gtags.vim'
" NeoBundle 'Shougo/vimfiler.git'


NeoBundleLazy 'git://github.com/thinca/vim-quickrun.git'
" {{{ vcs
NeoBundle 'fugitive.vim'
NeoBundle 'gitv'
NeoBundleLazy 'svndiff.vim'
NeoBundleLazy 'git://github.com/aghareza/vim-gitgrep.git'
NeoBundleLazy 'vcscommand.vim'
" }}}
" {{{ rails
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'ruby-matchit'
NeoBundleLazy 'tpope/vim-endwise'

NeoBundle 'tpope/vim-rails'
NeoBundle 'romanvbabenko/rails.vim'


" NeoBundle 'ujihisa/unite-rake'
" NeoBundle 'basyura/unite-rails'
" }}}
" {{{ phpdoc
NeoBundle 'git@github.com:vim-scripts/PDV--phpDocumentor-for-Vim.git'
NeoBundle 'ref.vim'
" }}}

" NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'scrooloose/nerdcommenter'

" {{{ visualstar
NeoBundleLazy "git://github.com/thinca/vim-visualstar.git"
" }}}

" {{{ occur
NeoBundleLazy "git://github.com/vim-scripts/occur.vim.git"
" }}}

" {{{ vimproc
NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \ 'windows' : 'make -f make_mingw32.mak',
            \ 'cygwin' : 'make -f make_cygwin.mak',
            \ 'mac' : 'make -f make_mac.mak',
            \ 'unix' : 'make -f make_unix.mak',
            \ },
            \ }
" }}}
NeoBundleLazy "Shougo/vimshell.git"
NeoBundleLazy "sjl/gundo.vim"
NeoBundleLazy "vim-scripts/ShowMultiBase.git"

" {{{ csv.vim
NeoBundleLazy "chrisbra/csv.vim.git"
" }}}
" {{{ phpfolding
" NeoBundle 'vim-scripts/phpfolding.vim'
" NeoBundle 'https://github.com/matsubo/phpfolding.vim'
" augroup vimrc
"    autocmd FileType phpunit EnableFastPHPFolds
" augroup END
" }}}

" {{{
NeoBundle "JSON.vim"
au! BufRead,BufNewFile *.json set filetype=json 
augroup json_autocmd 
    autocmd! 
    autocmd FileType json set autoindent 
    autocmd FileType json set formatoptions=tcq2l 
    autocmd FileType json set textwidth=78 shiftwidth=2 
    autocmd FileType json set softtabstop=2 tabstop=8 
    autocmd FileType json set expandtab 
    autocmd FileType json set foldmethod=syntax 
augroup END
" }}}

" {{{ vim-scripts/Mark
NeoBundleLazy "vim-scripts/Mark"
" }}}

NeoBundle 'git://github.com/vim-scripts/camelcasemotion.git'




" html5
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'


" {{{ camelcasemotion
NeoBundle 'git://github.com/bkad/CamelCaseMotion.git'
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e
" }}}
" {{{ aoi jump and smarty jum
" NeoBundle 'git://github.com/watanabe0621/SmartyJump.git'
" NeoBundle 'git://github.com/watanabe0621/aoi-jump.vim.git'
" nnoremap <silent> <space>b :e#<CR>
" nnoremap <silent> <space>ag :call AoiGrep()<CR>
" nnoremap <silent> <space>am :call AoiModuleJump()<CR>
" nnoremap <silent> <space>ap :call AoiProcessorJump()<CR>
" nnoremap <silent> <space>ac :call AoiClientJump()<CR>
" nnoremap <silent> <space>i :call SmartyJump()<CR>
" }}}
" {{{ php-cs-fixer
NeoBundle 'stephpy/vim-php-cs-fixer'

" If php-cs-fixer is in $PATH, you don't need to define line below
let g:php_cs_fixer_path = "~/.setting/bin/php-cs-fixer.phar"   " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_fixers_list = "controls_spaces,elseif,eof_ending,extra_empty_lines,php_closing_tag,braces,include,short_tag,return,visibility,unused_use,trailing_spaces,linefeed"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
" }}}
" {{{ plugin setting
" need to call after neobundle
filetype plugin on
filetype plugin indent on
" }}}
" {{{ global setting
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,iso-2022-jp,sjis
set ambiwidth=double
set wildmenu wildmode=list:full

" be improved
set nocompatible
" line wrap
set whichwrap=b,s,[,],<,>,~

" mouse mode
"set mouse=a
"set ttymouse=xterm2

" enable highligh when searching
set hlsearch

" Changing PHP comment color
" hi Comment ctermfg=2


" always show status line
set laststatus=2
set statusline=%F%<%m%r%h%w\ [%{&ff}]\ [%Y]\ [%04v,%04l/%L][%p%%]%=%{fugitive#statusline()}

" search behaviors
set ignorecase

" if the search word includes upper case, checks the case
set smartcase

" show match
set showmatch
set matchtime=3 "showmatchの表示時間


" show line number
set number
set ruler

" show incomplete command
set sc

" inremental search
set incsearch

" show special chars
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%


set hidden  "ファイル変更中でも他のファイルを開けるようにする
" }}}


" set leader key
let mapleader=","


" set modifiable
set modifiable

highlight SpecialKey cterm=NONE ctermfg=darkgray
highlight JpSpace cterm=underline ctermfg=darkgray
au BufRead,BufNew * match JpSpace /　/



" カーソル行をハイライト
set cursorline
highlight CursorLine ctermbg=DarkGray


" {{{ highlight spaces in the end of lines
augroup HighlightTrailingSpaces
    autocmd!
    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=#505050 ctermbg=none
    autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END
" }}}


" カレントウィンドウにのみ罫線を引く
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END

" {{{ highlight setting
" }}}

" Backspace key works for
set backspace=start,indent,eol

" http://d.hatena.ne.jp/yuyarin/20100225/1267084794
set backupskip=/tmp/*,/private/tmp/*
"set backup


" to be fast response
set ttyfast
set lazyredraw



"------ Syntax Check ------
" PHP Lint
" autocmd BufWritePost *.php :call PHPLint()
" function PHPLint()
" 	let result = system( &ft . ' -l ' . bufname(""))
" 	let headPart = strpart(result, 0, 16)
" 	if headPart != "No syntax errors"
" 		echo result
" 	endif
" endfunction


syntax on

" """""""""""""""""""""""""
" hard tab
" """""""""""""""""""""""""
" insert appropriate tab with 1 tab key. but it's not smart...
" set smarttab
set autoindent
set cindent

" old coding style
" set shiftwidth=2
" or
" new coding style
set expandtab


set shiftwidth=2
set softtabstop=2
set tabstop=2




" """""""""""""""""""""""""
" vim's tab shortcut
" """""""""""""""""""""""""
nnoremap [TABCMD]  <nop>
" nmap     <leader>t [TABCMD]
nmap     t [TABCMD]

nnoremap <silent> [TABCMD]f :<c-u>tabfirst<cr>
nnoremap <silent> [TABCMD]l :<c-u>tablast<cr>
nnoremap <silent> [TABCMD]n :<c-u>tabnext<cr>
nnoremap <silent> [TABCMD]N :<c-u>tabNext<cr>
nnoremap <silent> [TABCMD]p :<c-u>tabprevious<cr>
nnoremap <silent> [TABCMD]e :<c-u>tabedit<cr>
nnoremap <silent> [TABCMD]c :<c-u>tabclose<cr>
nnoremap <silent> [TABCMD]o :<c-u>tabonly<cr>
nnoremap <silent> [TABCMD]s :<c-u>tabs<cr>
nnoremap <silent> [TABCMD]t :<c-u>tabnew<cr>


" save shortcut
noremap <Leader><Leader> :up<CR>


" scroll by hitting space
nnoremap <Space> jzz
nnoremap <S-Space> kzz

" Disable F1 key
noremap <F1> <Nop>



" file operation
nnoremap <silent> <leader>q :q<cr>


" {{{ autocomplete
NeoBundle 'AutoComplPop'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'marcus/rsense'
NeoBundle 'supermomonga/neocomplete-rsense.vim'

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

"
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" disable auto comment out after the line break
" set formatoptions-=ro


" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : '',
            \ 'php' : $HOME.'/.setting/.vim/dict/php.dict',
            \ }

" 静的解析
NeoBundle 'scrooloose/syntastic'

" メソッド定義元へのジャンプ
NeoBundle 'szw/vim-tags'

" }}}
" {{{ Color setting
" colorscheme
NeoBundle 'tomasr/molokai'


NeoBundle 'ujihisa/unite-colorscheme'
" NeoBundle 'altercation/vim-colors-solarized'



" http://winterdom.com/2008/08/molokaiforvim
set bg=dark
set t_Co=256
colorscheme molokai
let g:molokai_original=1
" }}}
" {{{ vim-ref
NeoBundle 'thinca/vim-ref'
NeoBundle 'taka84u9/vim-ref-ri'
let g:ref_open                    = 'split'
let g:ref_refe_cmd                = expand('~/.vim/ref/ruby-ref1.9.2/refe-1_9_2')

nnoremap rr :<C-U>Unite ref/refe     -default-action=split -input=
nnoremap ri :<C-U>Unite ref/ri       -default-action=split -input=

aug MyAutoCmd
  au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>KK :<C-U>Unite -no-start-insert ref/ri   -input=<C-R><C-W><CR>
  au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>K  :<C-U>Unite -no-start-insert ref/refe -input=<C-R><C-W><CR>
aug END
"}}}
" {{{ File template
autocmd BufNewFile *.sh  0r $HOME/.setting/template/sh.sh
autocmd BufNewFile *.php 0r $HOME/.setting/template/php.php
autocmd BufNewFile *.html 0r $HOME/.setting/template/html.html
" }}}
" {{{ remember last edited line
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal! g'\"" |
                \ endif
endif
" }}}

"------------------------------------------------------------------------------------"
" 各種プログラムで構文チェク(:make)をCtr+c Ctr+cで行えるようにする
" 表示されたQuickFixはウィンドウを移動しなくても
" :cn および :cp　で移動可能
"------------------------------------------------------------------------------------"
" Perl構文チェック
autocmd FileType perl compiler perl
autocmd FileType perl map <c-c><c-c> :make<cr> :cw<cr><cr>

" PHP構文チェック
au BufRead,BufNewFile *.php set makeprg=php\ -l\ %
au BufRead,BufNewFile *.php set errorformat=%m\ in\ %f\ on\ line\ %l
autocmd FileType php map <c-c><c-c> :make<cr> :cw<cr><cr>

" Ruby構文チェック
au BufRead,BufNewFile *.rb set makeprg=ruby\ -c\ %
au BufRead,BufNewFile *.rb set errorformat=%m\ in\ %f\ on\ line\ %l
autocmd FileType rb map <c-c><c-c> :make<cr> :cw<cr><cr>

" HTML構文チェック
autocmd FileType xhtml,html :compiler tidy
autocmd FileType xhtml,html :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\"
autocmd FileType xhtml,html map <c-c><c-c> :make<cr> :cw<cr><cr>


" {{{ unite.vim
NeoBundle 'unite.vim'
" 入力モードで開始する
let g:unite_enable_start_insert=1

" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

call unite#set_buffer_name_option('default', 'ignorecase', 1)
call unite#set_buffer_name_option('default', 'smartcase', 1)


" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
" }}}

"------------------------------------
" Unite-rails.vim
"------------------------------------
"{{{
NeoBundle 'basyura/unite-rails'
function! UniteRailsSetting()
  nnoremap <buffer><C-H><C-H><C-H>  :<C-U>Unite rails/view<CR>
  nnoremap <buffer><C-H><C-H>       :<C-U>Unite rails/model<CR>
  nnoremap <buffer><C-H>            :<C-U>Unite rails/controller<CR>

  nnoremap <buffer><C-H>c           :<C-U>Unite rails/config<CR>
  nnoremap <buffer><C-H>s           :<C-U>Unite rails/spec<CR>
  nnoremap <buffer><C-H>m           :<C-U>Unite rails/db -input=migrate<CR>
  nnoremap <buffer><C-H>l           :<C-U>Unite rails/lib<CR>
  nnoremap <buffer><expr><C-H>g     ':e '.b:rails_root.'/Gemfile<CR>'
  nnoremap <buffer><expr><C-H>r     ':e '.b:rails_root.'/config/routes.rb<CR>'
  nnoremap <buffer><expr><C-H>se    ':e '.b:rails_root.'/db/seeds.rb<CR>'
  nnoremap <buffer><C-H>ra          :<C-U>Unite rails/rake<CR>
  nnoremap <buffer><C-H>h           :<C-U>Unite rails/heroku<CR>
endfunction
aug MyAutoCmd
  au User Rails call UniteRailsSetting()
aug END
"}}}
" {{{ Powerline
" NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
" let g:Powerline_symbols = 'fancy'
" }}}
" {{{ airline
NeoBundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

" }}}
" move the search word to the center
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz


" grep結果をquick fixに表示刷る
au QuickfixCmdPost vimgrep cw


" sample
" :Grep test
command! -complete=file -nargs=+ Grep call s:grep([<f-args>])
function! s:grep(args)
    let target = len(a:args) > 1 ? join(a:args[1:]) : '**/*'
    execute 'vimgrep' '/' . a:args[0] . '/j ' . target
    if len(getqflist()) != 0 | copen | endiincogf
endfunction




"" gtags
" map <C-g><C-g> :Gtags
" " map <C-i> :Gtags -f %<CR>
" " code jump
" map <C-j> :GtagsCursor<CR>
" " for gtags file skip
" map <C-n> :cn<CR>
" map <C-p> :cp<CR>

" vmap
" dump the variable.
:vmap st "zdiprint_r("<pre>".<C-R>z".</pre>");exit;<ESC>
:vmap se "zdierror_log(print_r(<C-R>z,1));<ESC>

" gitv
autocmd FileType git :setlocal foldlevel=99



" {{{ surround
NeoBundle 'surround.vim'
"for surround.vim
" [key map]
" 1 : <h1>|</h1>
" 2 : <h2>|</h2>
" 3 : <h3>|</h3>
" 4 : <h4>|</h4>
" 5 : <h5>|</h5>
" 6 : <h6>|</h6>
"
" p : <p>|</p>
" u : <ul>|</ul>
" o : <ol>|</ol>
" l : <li>|</li>
" a : <a href="">|</a>
" A : <a href="|"></a>
" i : <img src="|" alt="" />
" I : <img src="" alt"|" />
" d : <div>|</div>
" D : <div class="section">|</div>

autocmd FileType smarty let b:surround_101 = "{t}\r{/t}" " 101 = e
autocmd FileType smarty let b:surround_10f = "{t}\n\r\n{/t}" " 102 = f
map  ,tt ysse
map  ,tb ySSe


autocmd FileType php let g:surround_103 = "_('\r')"  " 103 = g
autocmd FileType php let g:surround_71 = "_(\"\r\")" " 71 = G



autocmd FileType html let b:surround_49  = "<h1>\r</h1>"
autocmd FileType html let b:surround_50  = "<h2>\r</h2>"
autocmd FileType html let b:surround_51  = "<h3>\r</h3>"
autocmd FileType html let b:surround_52  = "<h4>\r</h4>"
autocmd FileType html let b:surround_53  = "<h5>\r</h5>"
autocmd FileType html let b:surround_54  = "<h6>\r</h6>"

autocmd FileType html let b:surround_112 = "<p>\r</p>"
autocmd FileType html let b:surround_117 = "<ul>\r</ul>"
autocmd FileType html let b:surround_111 = "<ol>\r</ol>"
autocmd FileType html let b:surround_108 = "<li>\r</li>"
autocmd FileType html let b:surround_97  = "<a href=\"\">\r</a>"
autocmd FileType html let b:surround_65  = "<a href=\"\r\"></a>"
autocmd FileType html let b:surround_105 = "<img src=\"\r\" alt=\"\" />"
autocmd FileType html let b:surround_73  = "<img src=\"\" alt=\"\r\" />"
autocmd FileType html let b:surround_100 = "<div>\r</div>"
autocmd FileType html let b:surround_68  = "<div class=\"section\">\r</div>"
" }}}


set foldmethod=marker


" NERD_tree
" Q. How can I open a NERDTree automatically when vim starts up if no files were specified?
" autocmd vimenter * if !argc() | NERDTree | endif
" How can I close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif




" {{{ PDV (PhpDocumenter for vim)
inoremap <C-@> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-@> :call PhpDocSingle()<CR>
vnoremap <C-@> :call PhpDocRange()<CR> 


" After phpDoc standard
let g:pdv_cfg_CommentHead = "/**"
let g:pdv_cfg_Comment1 = " *"
let g:pdv_cfg_Commentn = " *"
let g:pdv_cfg_CommentTail = " */"
let g:pdv_cfg_CommentSingle = "//"

" Default values
let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Version = "$id:$"
let g:pdv_cfg_Author = "Yuki Matsukura"
let g:pdv_cfg_License = " "


let g:pdv_cfg_php4always = 0
let g:pdv_cfg_php4guess = 0
" }}}

" smarty jump
nnoremap <silent> <space>b :e#<CR>
nnoremap <silent> <space>i :call SmartyJump()<CR>


" Open .vimrc
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>

" 「コピーした文字で、繰り返し上書きペーストしたい」
vnoremap <silent> <C-p> "0p<CR>

" {{{ カーソルの上または下に表示する最小限の行数
set scrolloff=10
" }}}

" neosnippet "{{{
" snippetを保存するディレクトリを設定してください
" example
let s:default_snippet = neobundle#get_neobundle_dir() . '/neosnippet/autoload/neosnippet/snippets' " 本体に入っているsnippet
" let s:my_snippet = '~/snippet' " 自分のsnippet
" let g:neosnippet#snippets_directory = s:my_snippet
" let g:neosnippet#snippets_directory = s:default_snippet . ',' . s:my_snippet
imap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)
inoremap <silent><C-U>            <ESC>:<C-U>Unite snippet<CR>
nnoremap <silent><Space>e         :<C-U>NeoSnippetEdit -split<CR>
smap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)
" xmap <silent>o                    <Plug>(neosnippet_register_oneshot_snippet)
" }}}
" {{{
NeoBundle 'AndrewRadev/switch.vim'
nnoremap + :call switch#Switch(g:variable_style_switch_definitions)<cr>
nnoremap - :Switch<cr>
" }}}

" {{{ end-wise
NeoBundle 'tpope/vim-endwise.git'
" }}}
" {{{
NeoBundle 'ruby-matchit'
" }}}


NeoBundle 'hail2u/vim-css3-syntax'


NeoBundleCheck

