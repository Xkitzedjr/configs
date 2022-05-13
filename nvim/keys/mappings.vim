" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" TODO These conflict with st
nnoremap <C-Up>    :resize -2<CR>
nnoremap <C-Down>  :resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>
nnoremap <C-Left>  :vertical resize +2<CR>
nnoremap <M-=> <C-w>=

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" TODO I don't remember what these do (FUZZY mode?)
" Apparently some CoC thing
"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da

" Escape Term
tnoremap <Esc> <C-\><C-n>

" Easy NerdTree
noremap <Leader>ff :NERDTreeToggle <Enter>

" Easy Horz Split Term
" TODO should figure out how to toggle term with this
noremap <Leader>tt :bo sp <bar> :res 6 <bar> :term <Enter>
noremap <Leader>qt :bd! term<C-a><Enter>

" Easier map navigation
noremap <Leader>m `
