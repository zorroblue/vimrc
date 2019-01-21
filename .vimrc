:color koehler
set background =dark
syntax enable 
" set autoindent
filetype plugin indent on

syn on se title

" Color scheme
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
colorscheme sublimemonokai

" LINUX
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" indentation rules for FFmpeg: 4 spaces, no tabs
set number
" set expandtab
" set shiftwidth=4
" set softtabstop=4
" set cindent
" set cinoptions=(0
" Allow tabs in Makefiles.
autocmd FileType make,automake set noexpandtab shiftwidth=8 softtabstop=8
" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
""" match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
""" autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/
set cursorline

" for plugins - added by rameshwar
so ~/.vim/plugins.vim

" mappings for plugins

"NERD Tree File View - F2
" open automatically if no file is mentioned
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <F2> :NERDTreeToggle<CR>


