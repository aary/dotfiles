" 256-color terminal
set t_Co=256

" Sets tabs to spaces and uses 4 tabs
:set expandtab
:set tabstop=4 
:set shiftwidth=4
":set softtabstop=4
":set smarttab

" Syntax settings
filetype plugin on
filetype plugin indent on
:syntax on
:set autoindent

" XCODE color settings
highlight Identifier ctermfg=16
highlight Comment ctermfg=22
highlight PreProc ctermfg=52
highlight Statement ctermfg=126
highlight Type ctermfg=126
highlight LineNr ctermfg=244

" Set C++11 syntax
au BufNewFile,BufRead *.cpp set syntax=cpp11

" Shows match when cursor goes over bracket
" set showmatch

" Ignore case if search is all lowercase
set ignorecase
set smartcase

" Highlightes search and searches as you type
set hlsearch
set incsearch

" Do matching brace highlighting
" syn match parens /[(){}]/
" hi parens ctermfg=red


" Command to copy between files in vim
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/.vim_reg_for_copy.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/.vim_reg_for_copy.txt<CR>
map <silent> ,p :sview ~/.vim_reg_for_copy.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/.vim_reg_for_copy.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P


" Set column
" set textwidth=80

" Moves the cursor down by visual line for example when the line wraps
nnoremap j gj
nnoremap k gk

" Set the title for the terminal
set title

" Shows the line numbers and the ruler at the bottom right of the screen
:set number
:set ruler

" Maps escape to "jj"
" :imap jj <Esc>
" MAPPED CAPS LOCK TO ESC with Seil app
" CHANGE BACK IF DISABLE CAPS LOCK

" Auto indent in pasting, press F2 to toggle
set pastetoggle=<F2>

" Doesn't let the cursor scroll off the end, keeps it at 5 lines before the
" ending
set scrolloff=5
" :set novisualbell
" nnoremap n nzz
" nnoremap } }zz
" nnoremap { {zz

" Disables the visual flash when scrolling past an unscrollable region
" showmode displays the mode the editor is in
set visualbell t_vb=
set showmode

" Wraps cursor around the line so it goes past the end when scrolling
set whichwrap+=<,>,h,l,[,] 

" Maps : to ; so you can just type ";w" to save, etc.
nnoremap ; :

" Maps "$" to "-" so you can go to the end of a line easily
:map - $
:map H 0
:map L $

" Maps the "}" key binding to "J", and "{" to "K"
nnoremap <c-J> J
:map J }
:map K {


" Disable arrow keys in normal mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Use TAB to complete when typing words, else inserts TABs as usual.
" Uses dictionary and source files to find matching words to complete.
" See help completion for source,
" Note : usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
" Windows users can copy the file to their machine.
function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"set dictionary="/usr/dict/words"

" To map :q to :Q and :w to :W so both can be used for same purpose
:command WQ wq
:command Wq wq
:command W w
:command Q q

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>


" To treat lines with only whitespace as blank
function! ParagraphMove(delta, visual, count)
    normal m'
    normal |
    if a:visual
        normal gv
    endif

    if a:count == 0
        let limit = 1
    else
        let limit = a:count
    endif

    let i = 0
    while i < limit
        if a:delta > 0
            " first whitespace-only line following a non-whitespace character           
            let pos1 = search("\\S", "W")
            let pos2 = search("^\\s*$", "W")
            if pos1 == 0 || pos2 == 0
                let pos = search("\\%$", "W")
            endif
        elseif a:delta < 0
            " first whitespace-only line preceding a non-whitespace character           
            let pos1 = search("\\S", "bW")
            let pos2 = search("^\\s*$", "bW")
            if pos1 == 0 || pos2 == 0
                let pos = search("\\%^", "bW")
            endif
        endif
        let i += 1
    endwhile
    normal |
endfunction
nnoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
onoremap <silent> } :<C-U>call ParagraphMove( 1, 0, v:count)<CR>
nnoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
onoremap <silent> { :<C-U>call ParagraphMove(-1, 0, v:count)<CR>
