" Maps
"
" Any general keybinding falls here

" Turning off escape in most modes, but allowing escaped keys to be used as
" meta-keys, See escape_to_metakey.vim
noremap  <c-[><c-[> <nop>
noremap! <c-[><c-[> <nop>
" We however, still want the escape key in some modes.
inoremap jk <c-[>
vnoremap jk <c-[>

" Turning off space so it can be used as leader key without side effects. See
" leader.vim
noremap <space> <nop>

" Normal mode 

" Inconsistent behaviour
nnoremap Y y$
nnoremap cw dwi

" Fast common edits
nnoremap <c-s> :update<c-[>
nnoremap S :update<c-[>
nnoremap <c-h> i<c-h><c-[>l
nnoremap <c-j> o<c-[>

" Move screen line and not file line
nnoremap + gj
nnoremap - gk

" Next/previous buffer
nnoremap <c-n> :bnext<c-j>
nnoremap <c-p> :bprev<c-j>

" Go to places
nnoremap gb :ls<c-j>:b
nnoremap gw :execute ':silent !$BROWSER <cWORD>' <c-j> :redraw! <c-j>

" Repeat macros and commands faster
nnoremap Q @@
nnoremap \ @:
" TODO?: s, <c-s>, Z

" Windows and tabs
noremap <m-o> :ls<c-j>:b
noremap <m-d> ZZ

noremap <m-j> <c-w>j
noremap <m-k> <c-w>k
noremap <m-h> <c-w>h
noremap <m-l> <c-w>l
noremap <m-s> <c-w>s
noremap <m-v> <c-w>v

noremap <m-t> :tabnew<c-j>
noremap <m-n> gt
noremap <m-p> gT
noremap <m-1> :tabnext  1<c-j>
noremap <m-2> :tabnext  2<c-j>
noremap <m-3> :tabnext  3<c-j>
noremap <m-4> :tabnext  4<c-j>
noremap <m-5> :tabnext  5<c-j>
noremap <m-6> :tabnext  6<c-j>
noremap <m-7> :tabnext  7<c-j>
noremap <m-8> :tabnext  8<c-j>
noremap <m-9> :tabnext  9<c-j>
noremap <m-0> :tabnext 10<c-j>

" Shortcut to rapidly toggle `set list`
" nnoremap <m-l> :set list!<c-j>

" Spell corrector
noremap <m-`> :call ToggleProseMode()<c-j>
noremap ` z=
noremap <left> [s
noremap <right> ]s
noremap <up> zw
noremap <down> zg

" Working with diff mode
nnoremap du     :wincmd w<c-j>:normal u<c-j>:wincmd w<c-j>
nnoremap d<c-l> :diffupdate<c-j>
