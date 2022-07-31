" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" TODO These conflict with st
nnoremap <C-Down>  :resize -2<CR>
nnoremap <C-Up>    :resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>
nnoremap <C-Left>  :vertical resize +2<CR>
nnoremap <M-=> <C-w>=

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

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

" Tab Navigation
noremap <Leader>to :tab new<CR>
noremap <Leader>tn :tabn<CR>
noremap <Leader>tp :tabp<CR>

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
tmap <C-q> <Esc>:bd! term<C-a><Enter>

" Easier map navigation
noremap <Leader>n `

" Jump to config
noremap <leader>fg :Explore $HOME/.config/nvim <CR>
