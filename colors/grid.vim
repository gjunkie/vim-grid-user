" Author: Freddie Carthy
" Maintainer: Freddie Carthy

" --------------------------------
set background=dark
 
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="grid"

" CTERM colors
" --------------------------------
" let s:cyan_dark=252
" let s:gray=236
" let s:black=232

let s:cyan_dark=152
let s:cyan_light=195
let s:gray=238
let s:black=233

" these colors need to be updated
" let s:cyan_light=195
" let s:blue_two=117
" let s:blue_three=31


" these colors need to be updated
" let s:orange_one=220
" let s:orange_two=208
" let s:orange_three=202

let s:orange_one=226
let s:orange_two=165
let s:orange_three=166

" GUI colors
" --------------------------------
let s:gui_cyan_dark='#B0C8C6'
let s:gui_gray='#303030'
let s:gui_black='#342F3E'

let s:gui_cyan_light='#D7FFFF'
let s:gui_blue_two='#67BFD3'

let s:gui_orange_one='#FFD762'
let s:gui_oragne_two='#FFA43B'
let s:gui_orange_three='#FF7113'

comclear

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if has("gui_running")

    if a:guifg != ""
      exec "hi " . a:group . " guifg=" . a:guifg
    endif
    if a:guibg != ""
      exec "hi " . a:group . " guibg=" . a:guibg
    endif

  else

    if a:ctermfg != ""
      exec "hi " . a:group . " ctermfg=" . a:ctermfg
    endif
    if a:ctermbg != ""
      exec "hi " . a:group . " ctermbg=" . a:ctermbg
    endif

  endif

  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------

" Editor settings
" --------------------------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Cursor",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("CursorLine",       "",                   "",                   s:black,         s:cyan_light,           "",                   "")
call s:hi("CursorLineNR",     "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Normal",           s:gui_cyan_light,       s:gui_black,     s:cyan_light,           s:black,         "",                   "")
call s:hi("LineNr",           s:gui_gray,       "",                   s:gray,           "",                   "",                   "")

" Number column
" -----------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("CursorColumn",     "",                   "",                   "",                   "",                   "",                   "")
call s:hi("FoldColumn",       "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Folded",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SignColumn",       "",                   "",                   "",                   s:black,         "",                   "")

" Window/Tab delimiters
" -------------------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("ColorColumn",      "",                   "",                   "",                   "",                   "",                   "")
call s:hi("TabLine",          "",                   "",                   "",                   "",                   "",                   "")
call s:hi("TabLineFill",      "",                   "",                   "",                   "",                   "",                   "")
call s:hi("TabLineSel",       "",                   "",                   "",                   "",                   "",                   "")
call s:hi("VertSplit",        s:gui_black,     s:gui_cyan_light,       s:black,         s:gray,           "",                   "")

" File Navigation / Searching
" -------------------------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Directory",        "",                   "",                   s:cyan_light,           "",                   "",                   "")
call s:hi("IncSearch",        "",                   "",                   "",                   s:cyan_light,           "",                   "")
call s:hi("Search",           "",                   "",                   s:black,         s:cyan_light,           "",                   "")

" Prompt/Status
" -----------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("ModeMsg",          "",                   "",                   "",                   "",                   "",                   "")
call s:hi("MoreMsg",          "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Question",         "",                   "",                   "",                   "",                   "",                   "")
call s:hi("StatusLine",       "",                   "",                   "",                   "",                   "",                   "")
call s:hi("StatusLineNC",     "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Title",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("WildMenu",         "",                   "",                   "",                   "",                   "",                   "")

" Visual aid
" --------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Error",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("ErrorMsg",         "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Ignore",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("MatchParen",       "",                   "",                   s:black,         s:cyan_dark,           "",                   "")
call s:hi("NonText",          "",                   "",                   s:black,         "",                   "",                   "")
call s:hi("SpecialKey",       "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Todo",             "",                   "",                   s:black,         s:cyan_dark,         "",                   "")
call s:hi("Underlined",       "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Visual",           "",                   "",                   s:black,         s:cyan_dark,           "",                   "")
call s:hi("VisualNOS",        "",                   "",                   "",                   "",                   "",                   "")
call s:hi("WarningMsg",       "",                   "",                   "",                   "",                   "",                   "")

" Variable types
" --------------------------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Boolean",          "",                   "",                   s:orange_one,         "",                   "",                   "")
call s:hi("Character",        "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Constant",         "",                   "",                   s:cyan_dark,           "",                   "",                   "")
call s:hi("Float",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Function",         "",                   "",                   s:cyan_dark,           "",                   "",                   "")
call s:hi("Identifier",       "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Number",           "",                   "",                   s:cyan_light,         "",                   "",                   "")
call s:hi("String",           "",                   "",                   s:cyan_dark,           "",                   "",                   "")
call s:hi("StringDelimiter",  "",                   "",                   "",                   "",                   "",                   "")

" Language constructs
" --------------------------------
"
"          Group              guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Conditional",      "",                   "",                   s:cyan_light,           "",                   "",                   "")
call s:hi("Exception",        "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Keyword",          "",                   "",                   s:orange_two,         "",                   "",                   "")
call s:hi("Label",            "",                   "",                   s:cyan_dark,           "",                   "",                   "")
call s:hi("Operator",         "",                   "",                   s:cyan_light,           "",                   "",                   "")
call s:hi("Repeat",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Statement",        "",                   "",                   "",                   "",                   "",                   "")

call s:hi("Comment",          "",                   "",                   s:gray,           "",                   "",                   "")
call s:hi("Delimiter",        "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Debug",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Special",          "",                   "",                   s:orange_one,         "",                   "",                   "")
call s:hi("SpecialChar",      "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SpecialComment",   "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Tag",              "",                   "",                   "",                   "",                   "",                   "")

" C like
" ----------
"
"          Group                    guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Include",                "",                   "",                   s:cyan_dark,         "",                   "",                 "")
call s:hi("Define",                 "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Macro",                  "",                   "",                   "",                   "",                   "",                 "")
call s:hi("PreCondit",              "",                   "",                   "",                   "",                   "",                 "")
call s:hi("PreProc",                "",                   "",                   "",                   "",                   "",                 "")

call s:hi("StorageClass",           "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Structure",              "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Type",                   "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Typedef",                "",                   "",                   "",                   "",                   "",                 "")

" Completion menu
" --------------------------------
"
"          Group                    guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("Pmenu",                  "",                   "",                   s:cyan_dark,           s:gray,         "",                 "")
call s:hi("PmenuSel",               "",                   "",                   s:black,         s:cyan_light,           "",                 "")
call s:hi("PmenuSbar",              "",                   "",                   "",                   s:black,         "",                 "")
call s:hi("PmenuThumb",             "",                   "",                   "",                   s:cyan_dark,           "",                 "")

" Spelling
" --------------------------------
"
"          Group                    guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("SpellBad",               "",                   "",                   "",                   s:gray,       "",                   "")
call s:hi("SpellCap",               "",                   "",                   "",                   s:gray,                   "",                   "")
call s:hi("SpellLocal",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SpellRare",              "",                   "",                   "",                   "",                   "",                   "")

" Specific settings
"--------------------------------------------------------------------
"
"          Group                    guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
call s:hi("ALEErrorSign",           "",                   "",                   s:cyan_dark,       "",                   "",                   "")
call s:hi("ALEWarningSign",         "",                   "",                   s:gray,         "",                   "",                   "")
call s:hi("ALEVirtualTextError",    "",                   "",                   s:orange_three,       "",                   "",                   "")
call s:hi("ALEVirtualTextWarning",  "",                   "",                   s:orange_one,         "",                   "",                   "")

" Diff
" --------------------------------
hi DiffAdd         ctermfg=119     ctermbg=none    cterm=none
hi DiffChange      ctermfg=184     ctermbg=none    cterm=none
hi DiffDelete      ctermfg=196     ctermbg=none    cterm=none
call s:hi("DiffText", "", "", "", "", "", "")

" Links
"--------------------------------------------------------------------

"+--- Languages ---+
" JavaScript
" > pangloss/vim-javascript
hi! link jsArrowFunction          Function
" hi! link jsAsyncKeyword           Function
" hi! link jsBrackets               Normal
" hi! link jsFuncCall               Function
hi! link jsClassDefinition        Function
hi! link jsClassKeyword           Function
hi! link jsExtendsKeyword         Special
" hi! link jsFuncParens             Function
" hi! link jsFuncArgs               Normal
" hi! link jsFuncArgExpression      Normal
" hi! link jsFuncName               Function
" hi! link jsFunctionKey            Function
hi! link jsFunction               Function
hi! link jsObjectKey              Label
" hi! link jsObjectMethodType       Normal
" hi! link jsOperator               Normal
" hi! link jsOperatorKeyword        Normal
hi! link jsNoise                  Comment
hi! link jsExport                 Function
hi! link jsExportDefault          Normal
hi! link jsImport                 Function
" hi! link jsPrototype              Normal
" hi! link jsRegexpString           Normal
hi! link jsReturn                 Special
hi! link jsStorageClass           Constant
hi! link jsThis                   Label
" hi! link jsVariableDef            Normal


" JSX
" MaxMEllon/vim-jsx-pretty
" hi! link jsxComponentName Identifier
hi! link jsxAttrib                Normal
hi! link jsxBraces                Normal
" hi! link jsxTag Identifier
hi! link jsxTagName               Label
" hi! link jsxComponentName Identifier
hi! link jsxOpenPunct             Label
hi! link jsxClosePunct            Label
hi! link jsxCloseString           Label
" hi! link jsxElement Comment
" hi! link jsxAttribKeyword jsxAttrib
" hi! link jsxString String
" hi! link jsxComment Comment
" highlight def link jsxSpreadOperator Operator

" HTML
" hi! link htmlTagName Keyword

" Markdown
" plasticboy/vim-markdown
" hi! link htmlH1 Constant
" hi! link htmlH2 Constant
" hi! link htmlH3 Constant
" hi! link htmlH4 Constant
" hi! link htmlH5 Constant
" hi! link htmlH6 Constant
" hi! link mkdBlockquote Comment
" hi! link mkdBold Bold
" hi! link mkdCodeStart mkdCode
" hi! link mkdCodeEnd mkdCode
" hi! link mkdDelimiter Keyword
" hi! link mkdFootnotes mkdFootnote
" hi! link mkdID Constant
" hi! link mkdURL String
" hi! link mkdInlineURL mkdURL
" hi! link mkdItalic Italic
" hi! link mkdLink String
" hi! link mkdLinkDef mkdLink
" hi! link mkdLinkDefTarget mkdURL
" hi! link mkdLinkTitle mkdInlineURL
" hi! link mkdListItem Constant
" hi! link mkdListItemLine String
" hi! link mkdRule Constant
" 
