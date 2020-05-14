" Author: Freddie Carthy
" Maintainer: Freddie Carthy

" --------------------------------
set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="grid"

let s:gray_1=250
let s:gray_2=238
let s:gray_3=236
let s:gray_4=233
let s:gray_5=232
let s:light_cyan=195
let s:orange_1=220
let s:orange_3=214
let s:orange_3=208
let s:blue=117
comclear

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
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
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
" hi Normal          ctermfg=250     ctermbg=232    cterm=none
call s:hi("Normal", "", "", s:light_cyan, s:gray_5, "", "")
call s:hi("Cursor", "", "", "NONE", "NONE", "", "")
call s:hi("CursorLine", "", "", s:gray_4, s:light_cyan, "", "")
call s:hi("LineNr", "", "", s:gray_3, "NONE", "", "")
call s:hi("CursorLineNR", "", "", "NONE", "NONE", "", "")

" -----------------
" - Number column -
" -----------------
call s:hi("CursorColumn", "", "", "NONE", "NONE", "", "")
call s:hi("FoldColumn", "", "", "NONE", "NONE", "", "")
call s:hi("SignColumn", "", "", "NONE", "NONE", "", "")
call s:hi("Folded", "", "", "NONE", "NONE", "", "")

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
call s:hi("VertSplit", "", "", s:gray_5, s:gray_3, "", "")
call s:hi("ColorColumn", "", "", s:gray_1, s:gray_1, "", "")
call s:hi("TabLine", "", "", "NONE", "NONE", "", "")
call s:hi("TabLineFill", "", "", "NONE", "NONE", "", "")
call s:hi("TabLineSel", "", "", "NONE", "NONE", "", "")

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
call s:hi("Directory", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Search", "", "", s:gray_4, s:light_cyan, "", "")
call s:hi("IncSearch", "", "", "NONE", s:light_cyan, "", "")

" -----------------
" - Prompt/Status -
" -----------------
call s:hi("StatusLine", "", "", "NONE", "NONE", "", "")
call s:hi("StatusLineNC", "", "", s:gray_4, "NONE", "", "")
call s:hi("WildMenu", "", "", "NONE", "NONE", "", "")
call s:hi("Question", "", "", "NONE", "NONE", "", "")
call s:hi("Title", "", "", "NONE", "NONE", "", "")
call s:hi("ModeMsg", "", "", "NONE", "NONE", "", "")
call s:hi("MoreMsg", "", "", "NONE", "NONE", "", "")

" --------------
" - Visual aid -
" --------------
call s:hi("MatchParen", "", "", s:gray_4, s:light_cyan, "", "")
call s:hi("Visual", "", "", s:gray_4, s:light_cyan, "", "")
call s:hi("VisualNOS", "", "", "NONE", "NONE", "", "")
call s:hi("NonText", "", "", s:gray_4, "NONE", "", "")

call s:hi("Todo", "", "", s:orange_1, "NONE", "", "")
call s:hi("Underlined", "", "", "NONE", "NONE", "", "")
call s:hi("Error", "", "", "NONE", "NONE", "", "")
call s:hi("ErrorMsg", "", "", "NONE", "NONE", "", "")
call s:hi("WarningMsg", "", "", "NONE", "NONE", "", "")
call s:hi("Ignore", "", "", "NONE", "NONE", "", "")
call s:hi("SpecialKey", "", "", "NONE", "NONE", "", "")

" --------------------------------
" Variable types
" --------------------------------
call s:hi("Constant", "", "", s:orange_3, "NONE", "", "")
call s:hi("String", "", "", s:gray_1, "NONE", "", "")
call s:hi("StringDelimiter", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Character", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Number", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Boolean", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Float", "", "", s:light_cyan, "NONE", "", "")

call s:hi("Identifier", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Function", "", "", s:orange_1, "NONE", "", "")

" --------------------------------
" Language constructs
" --------------------------------
call s:hi("Statement", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Conditional", "", "", s:orange_3, "NONE", "", "")
call s:hi("Repeat", "", "", "NONE", "NONE", "", "")
call s:hi("Label", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Operator", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Keyword", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Exception", "", "", "NONE", "NONE", "", "")

call s:hi("Comment", "", "", s:gray_2, "NONE", "", "")
call s:hi("Special", "", "", s:orange_3, "NONE", "", "")
call s:hi("SpecialChar", "", "", "NONE", "NONE", "", "")
call s:hi("Tag", "", "", "NONE", "NONE", "", "")
call s:hi("Delimiter", "", "", s:gray_1, "NONE", "", "")
call s:hi("SpecialComment", "", "", "NONE", "NONE", "", "")
call s:hi("Debug", "", "", "NONE", "NONE", "", "")

" ----------
" - C like -
" ----------
call s:hi("PreProc", "", "", "NONE", "NONE", "", "")
call s:hi("Include", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Define", "", "", "NONE", "NONE", "", "")
call s:hi("Macro", "", "", "NONE", "NONE", "", "")
call s:hi("PreCondit", "", "", "NONE", "NONE", "", "")

call s:hi("Type", "", "", s:gray_1, "NONE", "", "")
call s:hi("StorageClass", "", "", s:light_cyan, "NONE", "", "")
call s:hi("Structure", "", "", "NONE", "NONE", "", "")
call s:hi("Typedef", "", "", s:gray_1, "NONE", "", "")

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=119     ctermbg=none    cterm=none
hi DiffChange      ctermfg=184     ctermbg=none    cterm=none
hi DiffDelete      ctermfg=196     ctermbg=none    cterm=none
call s:hi("DiffText", "", "", "NONE", "NONE", "", "")

" --------------------------------
" Completion menu
" --------------------------------
call s:hi("Pmenu", "", "", s:gray_1, s:gray_5, "", "")
call s:hi("PmenuSel", "", "", s:gray_4, s:light_cyan, "", "")
call s:hi("PmenuSbar", "", "", "NONE", s:gray_4, "", "")
call s:hi("PmenuThumb", "", "", "NONE", s:gray_1, "", "")

" --------------------------------
" Spelling
" --------------------------------
call s:hi("SpellBad", "", "", "NONE", "NONE", "", "")
call s:hi("SpellCap", "", "", "NONE", "NONE", "", "")
call s:hi("SpellLocal", "", "", "NONE", "NONE", "", "")
call s:hi("SpellRare", "", "", "NONE", "NONE", "", "")

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

call s:hi("ALEErrorSign", "", "", s:orange_3, "NONE", "", "")
call s:hi("ALEWarningSign", "", "", s:orange_1, "NONE", "", "")
hi! ALEVirtualTextError            ctermfg=203     guifg=#e27878
hi! ALEVirtualTextWarning          ctermfg=216     guifg=#e2a478

"--------------------------------------------------------------------
" Links                                                |
"--------------------------------------------------------------------

"+--- Languages ---+
" JavaScript
" > pangloss/vim-javascript
hi def link jsObjectKey Label
hi! link jsArrowFunction Function
hi! link jsAsyncKeyword Function
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsObjectKey Normal
hi! link jsObjectMethodType Delimiter
hi! link jsOperatorKeyword Constant
hi! link jsNoise Comment
hi! link jsExport Constant
hi! link jsFuncArgs Function
hi! link jsFuncArgExpression Delimiter
hi! link jsFuncName Function
hi! link jsFunctionKey Normal
hi! link jsFunction Normal
hi! link jsImport Constant
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar
hi! link jsReturn Special
hi! link jsStorageClass Function
hi! link jsVariableDef SpecialChar


" JSX
hi! link jsxRegion Comment

" HTML
hi! link htmlTagName Keyword

" Markdown
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

