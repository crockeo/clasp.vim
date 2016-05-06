if exists("b:current_syntax")
    finish
endif

function InitClaspSyntax()
    """"
    " Defining the builtin functionality of the language.

    " Doing the operators specially.
    syntax match claspBuiltIn /\v!/
    syntax match claspBuiltIn /\v\>/
    syntax match claspBuiltIn /\v\</
    syntax match claspBuiltIn /\v\=/
    syntax match claspBuiltIn /\v\|/
    syntax match claspBuiltIn /\v\&/
    syntax match claspBuiltIn /\v\^/
    syntax match claspBuiltIn /\v\+/
    syntax match claspBuiltIn /\v\-/
    syntax match claspBuiltIn /\v\*/
    syntax match claspBuiltIn /\v\//
    syntax match claspBuiltIn /\v\[\]/

    " Can do the alphanumeric strings normally.
    syntax keyword claspBuiltIn def
    syntax keyword claspBuiltIn defn nextgroup=claspFunction skipwhite
    syntax keyword claspBuiltIn len 
    syntax keyword claspBuiltIn exec
    syntax keyword claspBuiltIn tostr
    syntax keyword claspBuiltIn print
    syntax keyword claspBuiltIn if

    """"
    " Highlighting strings.
    syntax region claspString start=/\v"/ skip=/\v\\n/ end=/\v"/

    """"
    " Highlighting integers.
    syntax match claspNumber /\v(-?[1-9]\d*|0)(\.\d+)?/

    """"
    " Highlighting comments.
    syntax region claspComment start=/\v''/ end=/\v\n/

    """"
    " Highlighting function names.
    syntax match claspFunction /\v\w+(-\w+)*/ contained
    " TODO

    """"
    " Registering highlights.
    highlight link claspBuiltIn  Keyword
    highlight link claspString   String
    highlight link claspNumber   Number
    highlight link claspComment  Comment
    highlight link claspFunction Function

    " Finalizing the syntax.
    let b:current_syntax = "clasp"
endfunction

call InitClaspSyntax()
