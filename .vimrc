:let mapleader = "-"
:let maplocalleader = ","
:inoremap jj  <esc>
:inoremap squigs \stackrel{*}{\rightsquigarrow} 
:inoremap ssqg \stackrel{s}{\rightsquigarrow}
:inoremap ssgs \stackrel{s*}{\rightsquigarrow}
:inoremap aseq _{bs}r_1\cdot r_2
:noremap <leader>_ ddkP
:au BufRead,BufNewFile *.sbt,*.sc set filetype=scala
:noremap <leader>- ddp
:inoremap <leader><c-u> <esc>gUawea
:nnoremap <leader><c-u> gUawea<esc>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:nnoremap <Space> i<Space><Right><Esc>
"helps parenthesize word
:nnoremap <leader>z viw<esc>a)<esc>hbi(<esc>lel
"helps with indenting the file correctly with gg=G
filetype plugin indent on

xnoremap <silent> ( <ESC>:let p = &paste<CR>:set paste<CR>:let a = line2byte(line('.')) + col('.')<CR>gvc()<ESC>:if getregtype() ==# 'V'<CR>call setreg('"', substitute(@", '\n$', '', ''), 'c')<CR>endif<CR>P:exe "goto ".a<CR>:exe "let &paste=".p<CR>
:set number numberwidth=2
:iabbrev waht what
:iabbrev tehn then
:iabbrev taht that
:iabbrev @@ chengsong.tan@kcl.ac.uk
:iabbrev ccopy Copyright 2019 Chengsong Tan, all rights reserved.
:iabbrev lxita \textit{}<left>
:iabbrev dita $\textit{}$<left><left>
:iabbrev par  ()<left>
:iabbrev bgn  \begin{}<left>
:iabbrev nd   \end{}<left>
:iabbrev bk   $$<left>
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()

let g:vimtex_enable = 1
let g:tex_flavor = 'latex'
