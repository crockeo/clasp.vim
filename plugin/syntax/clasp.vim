if exists("b:current_syntax")
    finish
endif

""""
" Defining the builtin functionality of the language.

" Doing the operators specially.
syntax match claspBuiltIn "\v!"
syntax match claspBuiltIn "\v\>"
syntax match claspBuiltIn "\v\<"
syntax match claspBuiltIn "\v\="
syntax match claspBuiltIn "\v\|"
syntax match claspBuiltIn "\v\&"
syntax match claspBuiltIn "\v\^"
syntax match claspBuiltIn "\v\+"
syntax match claspBuiltIn "\v\-"
syntax match claspBuiltIn "\v\*"
syntax match claspBuiltIn "\v\/"
syntax match claspBuiltIn "\v\[\]"

" Can do the alphanumeric strings normally.
syntax keyword claspBuiltIn def
syntax keyword claspBuiltIn defn
syntax keyword claspBuiltIn len 
syntax keyword claspBuiltIn exec
syntax keyword claspBuiltIn tostr
syntax keyword claspBuiltIn print
syntax keyword claspBuiltIn if

""""
" Highlighting comments.
" TODO

""""
" Highlighting function names.
" TODO

""""
" Registering highlights.
highlight link claspBuiltIn Keyword

" Finalizing the syntax.
let b:current_syntax = "clasp"
