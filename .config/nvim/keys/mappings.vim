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

" Coc changed how they bind to tab for completion 

" (OLD) <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" NEW taken from :h coc-completion-example
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion: >

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
<

" Use <CR> to confirm completion, use: >

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
