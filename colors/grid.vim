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
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
" let s:cyan_dark=252
" let s:gray=236
" let s:black=232

let s:cyan_dark=152
let s:cyan_light=195
let s:gray=238
let s:black=233

" these colors need to be updated
" let s:blue_two=117

" these colors need to be updated
" let s:orange_one=220
" let s:orange_three=202

let s:orange_one=226
let s:orange_two=208
let s:orange_three=166

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


" Editor settings
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Cursor",                 "",                   "",                   "",                   "",                   "",                   "")
call s:hi("CursorLine",             "",                   "",                   s:black,              s:cyan_light,         "",                   "")
call s:hi("CursorLineNR",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Normal",                 "",                   "",                   s:cyan_light,         s:black,              "",                   "")
call s:hi("LineNr",                 "",                   "",                   s:gray,               "",                   "",                   "")

" Number column
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("CursorColumn",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("FoldColumn",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Folded",                 "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SignColumn",             "",                   "",                   "",                   s:black,              "",                   "")

" Window/Tab delimiters
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("ColorColumn",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("TabLine",                "",                   "",                   "",                   "",                   "",                   "")
call s:hi("TabLineFill",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("TabLineSel",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("VertSplit",              "",                   "",                   s:black,              s:gray,               "",                   "")

" File Navigation / Searching
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Directory",              "",                   "",                   s:cyan_light,         "",                   "",                   "")
call s:hi("IncSearch",              "",                   "",                   "",                   s:cyan_light,         "",                   "")
call s:hi("Search",                 "",                   "",                   s:black,              s:cyan_light,         "",                   "")

" Prompt/Status
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("ModeMsg",                "",                   "",                   "",                   "",                   "",                   "")
call s:hi("MoreMsg",                "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Question",               "",                   "",                   "",                   "",                   "",                   "")
call s:hi("StatusLine",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("StatusLineNC",           "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Title",                  "",                   "",                   "",                   "",                   "",                   "")
call s:hi("WildMenu",               "",                   "",                   "",                   "",                   "",                   "")

" Visual aid
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Error",                  "",                   "",                   "",                   "",                   "",                   "")
call s:hi("ErrorMsg",               "",                   "",                   s:gray,               s:orange_one,         "",                   "")
call s:hi("Ignore",                 "",                   "",                   "",                   "",                   "",                   "")
call s:hi("MatchParen",             "",                   "",                   s:black,              s:cyan_dark,          "",                   "")
call s:hi("NonText",                "",                   "",                   s:black,              "",                   "",                   "")
call s:hi("SpecialKey",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Todo",                   "",                   "",                   s:black,              s:cyan_dark,          "",                   "")
call s:hi("Underlined",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Visual",                 "",                   "",                   s:black,              s:cyan_dark,          "",                   "")
call s:hi("VisualNOS",              "",                   "",                   "",                   "",                   "",                   "")
call s:hi("WarningMsg",             "",                   "",                   "",                   "",                   "",                   "")

" Variable types
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Boolean",                "",                   "",                   s:orange_one,         "",                   "",                   "")
call s:hi("Character",              "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Constant",               "",                   "",                   s:cyan_dark,          "",                   "",                   "")
call s:hi("Float",                  "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Function",               "",                   "",                   s:cyan_dark,          "",                   "",                   "")
call s:hi("Identifier",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Number",                 "",                   "",                   s:cyan_light,         "",                   "",                   "")
call s:hi("String",                 "",                   "",                   s:cyan_dark,          "",                   "",                   "")
call s:hi("StringDelimiter",        "",                   "",                   "",                   "",                   "",                   "")

" Language constructs
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Conditional",            "",                   "",                   s:cyan_light,         "",                   "",                   "")
call s:hi("Exception",              "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Keyword",                "",                   "",                   s:orange_two,         "",                   "",                   "")
call s:hi("Label",                  "",                   "",                   s:cyan_dark,          "",                   "",                   "")
call s:hi("Operator",               "",                   "",                   s:cyan_light,         "",                   "",                   "")
call s:hi("Repeat",                 "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Statement",              "",                   "",                   "",                   "",                   "",                   "")

call s:hi("Comment",                "",                   "",                   s:gray,               "",                   "",                   "")
call s:hi("Delimiter",              "",                   "",                   s:cyan_dark,          "",                   "",                   "")
call s:hi("Debug",                  "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Special",                "",                   "",                   s:orange_one,         "",                   "",                   "")
call s:hi("SpecialChar",            "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SpecialComment",         "",                   "",                   "",                   "",                   "",                   "")
call s:hi("Tag",                    "",                   "",                   "",                   "",                   "",                   "")

" C like
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Include",                "",                   "",                   s:cyan_dark,          "",                   "",                 "")
call s:hi("Define",                 "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Macro",                  "",                   "",                   "",                   "",                   "",                 "")
call s:hi("PreCondit",              "",                   "",                   "",                   "",                   "",                 "")
call s:hi("PreProc",                "",                   "",                   "",                   "",                   "",                 "")

call s:hi("StorageClass",           "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Structure",              "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Type",                   "",                   "",                   "",                   "",                   "",                 "")
call s:hi("Typedef",                "",                   "",                   "",                   "",                   "",                 "")

" Completion menu
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("Pmenu",                  "",                   "",                   s:cyan_dark,          s:gray,               "",                 "")
call s:hi("PmenuSel",               "",                   "",                   s:black,              s:cyan_light,         "",                 "")
call s:hi("PmenuSbar",              "",                   "",                   "",                   s:black,              "",                 "")
call s:hi("PmenuThumb",             "",                   "",                   "",                   s:cyan_dark,          "",                 "")

" Spelling
"          Group                    guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("SpellBad",               "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SpellCap",               "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SpellLocal",             "",                   "",                   "",                   "",                   "",                   "")
call s:hi("SpellRare",              "",                   "",                   "",                   "",                   "",                   "")



" ALE
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("ALEErrorSign",           "",                   "",                   s:cyan_dark,          "",                   "",                   "")
call s:hi("ALEWarningSign",         "",                   "",                   s:gray,               "",                   "",                   "")
call s:hi("ALEVirtualTextError",    "",                   "",                   s:orange_three,       "",                   "",                   "")
call s:hi("ALEVirtualTextWarning",  "",                   "",                   s:orange_one,         "",                   "",                   "")

" Indent Guides
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("IndentGuidesOdd",        "",                   "",                   "",                   s:cyan_dark,          "",                   "")
call s:hi("IndentGuidesEven",       "",                   "",                   "",                   s:cyan_dark,          "",                   "")

" Diff
"                                   guifg                 guibg                 ctermfg               ctermbg               attr                  guisp
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
call s:hi("DiffAdd",                "",                   "",                   s:cyan_light,         s:gray,               "",                   "")
call s:hi("DiffChange",             "",                   "",                   s:orange_one,         s:gray,               "",                   "")
call s:hi("DiffDelete",             "",                   "",                   s:orange_three,       s:gray,               "",                   "")
call s:hi("DiffText",               "",                   "",                   s:gray,               "",                   "",                   "")




" Links
"                                   Group
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
"
" JavaScript
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
" > pangloss/vim-javascript
hi! link jsArrowFunction            Function
" hi! link jsAsyncKeyword           Function
" hi! link jsBrackets               Normal
" hi! link jsFuncCall               Function
hi! link jsClassDefinition          Function
hi! link jsClassKeyword             Function
hi! link jsExtendsKeyword           Special
" hi! link jsFuncParens             Function
" hi! link jsFuncArgs               Normal
" hi! link jsFuncArgExpression      Normal
" hi! link jsFuncName               Function
" hi! link jsFunctionKey            Function
hi! link jsFunction                 Function
hi! link jsObjectKey                Label
" hi! link jsObjectMethodType       Normal
" hi! link jsOperator               Normal
" hi! link jsOperatorKeyword        Normal
hi! link jsNoise                    Comment
hi! link jsExport                   Function
hi! link jsExportDefault            Normal
hi! link jsImport                   Function
" hi! link jsPrototype              Normal
" hi! link jsRegexpString           Normal
hi! link jsReturn                   Special
hi! link jsStorageClass             Constant
hi! link jsThis                     Label
" hi! link jsVariableDef            Normal


" JSX
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
" MaxMEllon/vim-jsx-pretty
" hi! link jsxComponentName Identifier
hi! link jsxAttrib                  Normal
hi! link jsxBraces                  Normal
" hi! link jsxTag Identifier
hi! link jsxTagName                 Label
" hi! link jsxComponentName Identifier
hi! link jsxOpenPunct               Label
hi! link jsxClosePunct              Label
hi! link jsxCloseString             Label
" hi! link jsxElement Comment
" hi! link jsxAttribKeyword jsxAttrib
" hi! link jsxString String
" hi! link jsxComment Comment
" highlight def link jsxSpreadOperator Operator


" HTML
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
hi! link htmlArg                    Normal
hi! link htmlTagName                Label
hi! link htmlEndTag                 Label


" Markdown
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
" plasticboy/vim-markdown
hi! link htmlH1                     Constant
hi! link htmlH2                     Constant
hi! link htmlH3                     Constant
hi! link htmlH4                     Constant
hi! link htmlH5                     Constant
hi! link htmlH6                     Constant
" hi! link mkdBlockquote Comment
" hi! link mkdBold Bold
" hi! link mkdCodeStart mkdCode
" hi! link mkdCodeEnd mkdCode
hi! link mkdDelimiter               Normal
" hi! link mkdFootnotes mkdFootnote
hi! link mkdHeading                 Special
" hi! link mkdID Constant
" hi! link mkdURL String
" hi! link mkdInlineURL mkdURL
" hi! link mkdItalic Italic
hi! link mkdLink                    String
" hi! link mkdLinkDef mkdLink
" hi! link mkdLinkDefTarget mkdURL
" hi! link mkdLinkTitle mkdInlineURL
hi! link mkdListItem                Special
" hi! link mkdListItemLine String
" hi! link mkdRule Constant


" Vim
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
hi! link vimCommentTitle            Comment
hi! link vimCommand                 Constant
hi! link vimFuncSID                 Constant
hi! link vimFuncVar                 Constant
hi! link vimGroup                   Constant
hi! link vimHiAttrib                Normal
hi! link vimHiCTerm                 Constant
hi! link vimHiCTermFgBg             Constant
hi! link vimHiGroup                 Normal
hi! link vimHighlight               Constant
hi! link vimLet                     Label
hi! link vimOption                  Label
hi! link vimVar                     Constant
