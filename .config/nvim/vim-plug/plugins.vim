" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " C/C++ sytanx higlighting
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    " Configurable tabline
    Plug 'itchyny/lightline.vim'

    " Ended up being more distracting
    " Indention guides
    "Plug 'Yggdroot/indentline' 

call plug#end()

