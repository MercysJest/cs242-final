" Vim syntax file
" Language: SMT-LIB
" Maintainer: Roberto Vigo
" Latest Revision: 23 Jan 2012

if exists("b:current_syntax")
  finish
endif

" Keywords
setlocal iskeyword+=-
setlocal iskeyword+==
setlocal iskeyword+=>
setlocal iskeyword+=:
syn keyword basicLanguageKeywords assert check-sat get-proof get-model declare-sort define-sort declare-const declare-fun set-option forall :pattern exit define-fun get-value declare-datatypes value mk-item mk-vec as size model get-unsat-core select store
syn keyword types Bool Int Real Vector Item Crash Array
syn keyword bool_const false true
syn keyword operators and or not => = iff distinct > >= ite
syn match comments ";.*$"
syn match forall_vars "?[a-zA-Z0-9_]*"


let b:current_syntax = "smt-lib"

hi def link basicLanguageKeywords   Statement
hi def link comments                Comment
hi def link bool_const              Boolean
hi def link operators               Operator
hi def link types                   Type
hi def link forall_vars             Identifier
" This is a simple script. It extends the syntax highlighting to
" highlight each matching set of parens in different colors, to make
" it visually obvious what matches which.

" Obviously, most useful when working with lisp. But it's also nice othe
" times.

" I don't intend to maintain this script. I hacked it together for my
" own purposes, and it is sufficient to the day. If you want to improve it,
" knock yourself out.

" This file is public domain.

hi Comment ctermfg=cyan
" define colors. Note that the one numbered '16' is the outermost pair,
" keep that in mind if you want to change the colors.
" Also, if this script doesn't work on your terminal, you may need to add
" guifg=xx or ever termfg=, though what good this script will do on a 
" black and white terminal I don't know.
hi level1c ctermfg=brown
hi level2c ctermfg=blue
hi level3c ctermfg=gray
hi level4c ctermfg=yellow
hi level5c ctermfg=cyan
hi level6c ctermfg=darkred
hi level7c ctermfg=magenta
hi level8c ctermfg=brown
hi level9c ctermfg=gray
hi level10c ctermfg=red
hi level11c ctermfg=magenta
hi level12c ctermfg=blue
hi level13c ctermfg=yellow
hi level14c ctermfg=lightred
hi level15c ctermfg=cyan
hi level16c ctermfg=lightgrey



" These are the regions for each pair.
" This could be improved, perhaps, by makeing them match [ and { also,
" but I'm not going to take the time to figure out haw to make the
" end pattern match only the proper type.
syn region level1 matchgroup=level1c start=/(/ end=/)/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level2 matchgroup=level2c start=/(/ end=/)/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level3 matchgroup=level3c start=/(/ end=/)/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level4 matchgroup=level4c start=/(/ end=/)/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level5 matchgroup=level5c start=/(/ end=/)/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level6 matchgroup=level6c start=/(/ end=/)/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level7 matchgroup=level7c start=/(/ end=/)/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level8 matchgroup=level8c start=/(/ end=/)/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level9 matchgroup=level9c start=/(/ end=/)/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level10 matchgroup=level10c start=/(/ end=/)/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level11 matchgroup=level11c start=/(/ end=/)/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
syn region level12 matchgroup=level12c start=/(/ end=/)/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
syn region level13 matchgroup=level13c start=/(/ end=/)/ contains=TOP,level13,level14,level15, level16,NoInParens
syn region level14 matchgroup=level14c start=/(/ end=/)/ contains=TOP,level14,level15, level16,NoInParens
syn region level15 matchgroup=level15c start=/(/ end=/)/ contains=TOP,level15, level16,NoInParens
syn region level16 matchgroup=level16c start=/(/ end=/)/ contains=TOP,level16,NoInParens
