" MISC SECTION

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

"" gruvbox theme configuration

autocmd vimenter * colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'

" PLUGIN SECTION

call plug#begin('~/.vim/plugged')

""  gruvbox theme
Plug 'morhetz/gruvbox'

"" vim-airpline
Plug 'vim-airline/vim-airline'

call plug#end()
