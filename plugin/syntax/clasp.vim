if exists("b:current_syntax")
    finish
endif

" Defining the built-ins of the language.
syntax match claspBuiltIn "="
syntax match claspBuiltIn ">"
syntax match claspBuiltIn "<"
syntax match claspBuiltIn "!"
syntax match claspBuiltIn "|"
syntax match claspBuiltIn "&"
syntax match claspBuiltIn "^"
syntax match claspBuiltIn "def"
syntax match claspBuiltIn "defn"
syntax match claspBuiltIn "+"
syntax match claspBuiltIn "-"
syntax match claspBuiltIn "*"
syntax match claspBuiltIn "/"
syntax match claspBuiltIn "[]"
syntax match claspBuiltIn "len" 
syntax match claspBuiltIn "exec"
syntax match claspBuiltIn "tostr"
syntax match claspBuiltIn "print"
syntax match claspBuiltIn "if"

" Defining highlights.
highlight claspBuiltIn Keyword

" Finalizing the syntax.
let b:current_syntax = "clasp"
