" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'altercation/vim-colors-solarized'
" " Plug 'scrooloose/syntastic'
" ." Plug 'airblade/vim-gitgutter'
" ." Plug 'valloric/youcompleteme' ", { 'do': './install.py --go-completer --js-completer' }
" " Plug 'jacquesbh/vim-showmarks'
" Plug 'tpope/vim-sensible'
" Plug 'itchyny/lightline.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'scrooloose/nerdtree' ", { 'on': 'NERDTreeToggle' }
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-speeddating'
" Plug 'vim-scripts/cream-showinvisibles'
call plug#end()

" set list

" use ; instead of : for every command
nnoremap ; :

" to allow better training
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

map! <Up>    <NOP>
map! <Down>  <NOP>
map! <Left>  <NOP>
map! <Right> <NOP>

" map j and k to move inside the same line
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Mappings to move lines
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

set autoread             " automatically read file if changed outside but not inside
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title

set visualbell           " don't beep
set noerrorbells         " don't beep

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set hidden

set number " line numbers
set mouse=a

syntax enable
set background=dark
colorscheme solarized


"" change current line hl if insert mode
autocmd InsertEnter,InsertLeave * set cursorline!


let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" optional reset cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[1 q"
" augroup END

autocmd StdinReadPre * let s:std_in=1

"" tree

" open the tree if no args
""" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open the tree if the file open is a dir
""" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close if the last window is the tree
""" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" syntastic

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"" solarized

" let g:solarized_contrast="normal"
" let g:solarized_visibility="low"

"" fugitive

" set statusline+=%{fugitive#statusline()}


" Quickly edit/reload the vimrc file
"" nmap <silent> <leader>ev :e $MYVIMRC<CR>
"" nmap <silent> <leader>sv :so $MYVIMRC<CR>



