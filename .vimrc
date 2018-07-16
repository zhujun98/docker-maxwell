" Author: Jun Zhu, zhujun981661@gmail.com
"
" Acitvate runtime path manipulation.
" execute pathogen#infect()
syntax enable

set guifont=courier_new:h12
color evening

" set number " Display line numbers on the left.
set ruler " Show the cursor position.

set showcmd " Show incomplete commands.

set wildmenu " Show a menu when using tab completion.

set nowrap " Lines longer than the width of the window will not wrap.

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" It hides buffers instead of closing them. This means that you can have
" unwritten changes to a file and open a new file using :e, without being
" forced to write or undo your changes first. Also, undo buffers and marks
" are preserved while the buffer is open.
set hidden

set expandtab " Use spaces to represent tab.
set softtabstop=2 " Number of spaces that a <Tab> counts for while performing editing operation.
set tabstop=4 " Number of spaces that a <Tab> in the file counts for.

set autoindent
set smartindent
set shiftwidth=2 " Number of spaces to use for autoindenting.

set hlsearch " Highlight search terms.

set visualbell " Don't beep.

set history=1000 " Number of commands and search history to remember, default=50.

set backup " Keep a backup file which ends with '~'.

filetype plugin on

let g:netrw_banner = 0 " Disable directory banner.
let g:netrw_liststyle = 3 " Use tree style listing.
let g:netrw_browse_split = 4 " Open file in the previous window.
let g:netrw_altv = 1 " Open a splitting window on the right when pressing 'v' in the directory.
" Use :resize N or :vertical resize N to set the width or height to N characters.
let g:netrw_winsize = 20 " The width of explore will be 20% of the page width.

