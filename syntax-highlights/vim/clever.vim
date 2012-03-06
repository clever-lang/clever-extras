" vim syntax file
" Language: Clever
" Mantainer: Pedro Faria de Miranda Pinto <eu@eusouopedro.com>
" Last Change: Mar 6, 2012
" URL: http://clever-lang.github.com

" For version 5.x: Clear all syntax items.
" For version 6.x: Quit when a syntax file was already loaded.
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C++ syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

syn keyword cleverInclude         import as use
syn match   cleverComment         "#.*$"

" Types
syn keyword cleverType Void Int String Pair Map Array Function 

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_clever_syn_inits")
  if version < 508
    let did_clever_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cleverComment      Comment
  HiLink cleverInclude      Include
  HiLink cleverType         Type

  delcommand HiLink
endif

let b:current_syntax = "clever"
