" You can use \c to toggle spell check
"
" You will need:
"   * Pathogen
"   * Rainbow Parens
"   * jedi-vim
"   * monokai-phoenix
"
" Just google those names and I'm sure the github repos will come up. :)
" Follow the instructions the repos give you when installing the above
" dependencies.
"
" Feel free to comment herein for support/feedback, patches, etc.

set t_Co=256
set swapfile
"smartindent is nice for wrapping docstring paragraphs with gq,
" but overall it's mostly annoying to me.
"set smartindent
set dir=~/tmp
set number
set ruler
syntax on

set spelllang=en
"set spell

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"set textwidth=79
au FileType gitcommit set tw=50

" just for webdev
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

au BufRead,BufNewFile *.md setlocal textwidth=79

let g:vim_markdown_folding_disabled=1

colorscheme monokai-phoenix

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

execute pathogen#infect()

let g:jedi#show_call_signatures = "2"

" Toggle spellchecking
function! ToggleSpellCheck()
  set spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction

nnoremap <silent> <Leader>c :call ToggleSpellCheck()<CR>
