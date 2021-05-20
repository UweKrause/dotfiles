"" VIM in general

set encoding=UTF-8

set number relativenumber



"" PLUG autoload
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" PLUGINS to install
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-editors/vim-elixir'
Plug 'honza/vim-snippets'
"Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin' |
	\ Plug 'ryanoasis/vim-devicons' 

call plug#end()



"let g:solarized_termcolors=256 " needed ?
"set background=dark
"colorscheme solarized



"" COC
runtime coc.vimrc



"" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" use nerdfonts (must be installed as OS dependency) (archpackages: ttf-nerd-fonts-symbols-mono )
let g:NERDTreeGitStatusUseNerdFonts = 1

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | wincmd p | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

