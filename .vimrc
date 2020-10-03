" MISC
"" Persistent Undo - https://stackoverflow.com/questions/5700389/using-vims-persistent-undo
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if has('persistent_undo')
	let myUndoDir = expand(vimDir . '/undodir')
	call system('mkdir ' . vimDir)
	call system('mkdir ' . myUndoDir)
	let &undodir = myUndoDir
	set undofile
endif

"" Persistent Line Number - https://stackoverflow.com/questions/774560/in-vim-how-do-i-get-a-file-to-open-at-the-same-line-number-i-closed-it-at-last
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal! g'\"" | endif
endif

" PLUGINS
call plug#begin('~/.vim/plugged')

""  gruvbox theme
Plug 'morhetz/gruvbox'
"" vim-airpline
Plug 'vim-airline/vim-airline'
"" nerdtree
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

" CONFIGURATIONS
"" gruvbox
autocmd vimenter * colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
"" nerdtree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1
