

"set the no vi combatible
set nocompatible

"begin pathogen
execute pathogen#infect()

"set commande aliases
:command Cterm ConqueTerm bash
:command Ctermsplit ConquTermSplit bash
:command Ctermvsplit ConqueTermVSplit bash
:command W w
:command Tab s/\t/    /g

"set \ key mappings
nmap \c :Ctermvsplit
nmap \n :NERDTreeToggle

"set syntax
syntax on

"set tab size to 4
set tabstop=4
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set smarttab
set smartindent


" auto indent
set autoindent

" This is for filetype specific behavior (i.e. python is different than c++)
filetype indent plugin on

" turn on line numbers
set number

" set folding
set foldmethod=indent
"set foldnestmax=2
set nofoldenable


" save foldings
au BufWinLeave * silent! mkview
au BufWinenter * silent! loadview
