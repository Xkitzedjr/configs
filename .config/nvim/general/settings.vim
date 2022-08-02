" set leader key
let g:mapleader = "\<Space>"

" Indention guide settings
" The indention guide is no longer in use
let g:indentLine_color_term = 'grey'
let g:indentLine_char = ';'

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set title                               " Display buffer name in title
set hlsearch                            " Highlight search
set incsearch                           " Jump to search while typing
set showmatch                           " Show matching brackets
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object
set iskeyword+=_                        " treat _ sepererated words as a word text object
set mouse=a                             " Enable your mouse
set mousehide                           " Hide the mouse while typing
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set scrolloff=4                         " 4 lines above or below when scrolling
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 4 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions=cro                   " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set fillchars+=vert:v                   " Set the vertical split character
set noshowmode                          " We don't need to see things like -- INSERT -- anymore bc of powerline

" Dynamic numbering
set number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END

" Testing
set cursorline                         " Enable highlighting of the current line
highlight CursorLine cterm=NONE ctermbg=237
highlight CursorLineNr cterm=None ctermbg=237

" Not sure if i like the following
"set fillchars+=hort:>                  " Set the horizontal split character
"set autochdir                          " Your working directory will always be the same as the file you have open

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
